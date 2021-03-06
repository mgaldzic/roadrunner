####################################################################
#
# CMake Build Script for libsbml conversion tests
#
# 

file(GLOB C_FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.c)

foreach(c_file ${C_FILES})
	set_source_files_properties(${c_file} PROPERTIES LANGUAGE CXX)
endforeach()

file(GLOB CPP_FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp )
file(GLOB H_FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.h )

# figure out whether we are doing an individual build, or whether 
# this package has already been integrated
set (TEST_LIB)
if (EXISTS "${CMAKE_SOURCE_DIR}/VERSION.txt")
  # integrated
  set (TEST_LIB ${LIBSBML_LIBRARY}-static)
else()
  # individual test build
  set (TEST_LIB comp)
endif()

set(TEST_LIBSBML_LIBS ${TEST_LIB} ${LIBCHECK_LIBRARY})
set(TEST_FILES ${CPP_FILES} ${C_FILES} ${H_FILES})
include_directories(BEFORE ${CMAKE_SOURCE_DIR}/src)
include_directories(${LIBCHECK_INCLUDE_DIR})
add_executable(test_comp_sbase ${TEST_FILES})
target_link_libraries(test_comp_sbase ${TEST_LIBSBML_LIBS})
add_test(test_comp_sbase_run ${CMAKE_CURRENT_BINARY_DIR}/test_comp_sbase )
set_tests_properties(test_comp_sbase_run PROPERTIES ENVIRONMENT 
	"srcdir=${CMAKE_CURRENT_SOURCE_DIR}")
