####################################################################
#
# CMake Build Script for FBC extension
#
# $Author$
# $Id$
# $HeadURL$
#

file(GLOB C_FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.c)

foreach(c_file ${C_FILES})
	set_source_files_properties(${c_file} PROPERTIES LANGUAGE CXX)
endforeach()

file(GLOB CPP_FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp )
file(GLOB H_FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.h )

set(TEST_FILES ${CPP_FILES} ${C_FILES} ${H_FILES})

include_directories(${LIBCHECK_INCLUDE_DIR})
include_directories(BEFORE  ${CMAKE_SOURCE_DIR}/src)

add_executable(test_sbml_package_fbc ${TEST_FILES})
target_link_libraries(test_sbml_package_fbc ${LIBSBML_LIBRARY}-static ${LIBCHECK_LIBRARY})
add_test(test_sbml_package_fbc_run ${CMAKE_CURRENT_BINARY_DIR}/test_sbml_package_fbc )
set_tests_properties(test_sbml_package_fbc_run PROPERTIES ENVIRONMENT 
	"srcdir=${CMAKE_CURRENT_SOURCE_DIR}")
