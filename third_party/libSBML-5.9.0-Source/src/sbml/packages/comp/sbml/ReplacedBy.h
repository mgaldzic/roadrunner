/**
 * @file    ReplacedBy.h
 * @brief   Definition of ReplacedBy, the Replacing-derived class of the comp package.
 * @author  Lucian Smith 
 *
 *<!---------------------------------------------------------------------------
 * This file is part of libSBML.  Please visit http://sbml.org for more
 * information about SBML, and the latest version of libSBML.
 *
 * Copyright 2011 California Institute of Technology.
 * 
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation.  A copy of the license agreement is provided
 * in the file named "LICENSE.txt" included with this software distribution
 * and also available online as http://sbml.org/software/libsbml/license.html
 *------------------------------------------------------------------------- -->
 *
 * @class ReplacedBy
 * @sbmlbrief{comp} Implementation of the %ReplacedBy construct from the
 * &ldquo;comp&rdquo; package.
 *
 * The ReplacedBy class was introduced by the SBML Level&nbsp;3 @ref comp
 * @if java "Hierarchical %Model Composition"@endif@~ 
 * package (&ldquo;comp&rdquo;) to allow submodel elements to be 'canonical'
 * versions of the element while still allowing the parent model to reference
 * those elements.  Whereas a ReplacedElement object indicates that the
 * containing object replaces another, a ReplacedBy object indicates the
 * converse: the parent object is to be replaced by another object.

 * As is the case with ReplacedElement, the ReplacedBy class inherits from SBaseRef.  
 * It additionally defines one required attribute ("submodelRef"), defined in 
 * libSBML in the Replacing class.
 */

#ifndef ReplacedBy_H__
#define ReplacedBy_H__


#include <sbml/common/extern.h>
#include <sbml/common/sbmlfwd.h>
#include <sbml/packages/comp/common/compfwd.h>

#ifdef __cplusplus

#include <string>

#include <sbml/SBase.h>
#include <sbml/ListOf.h>
#include <sbml/packages/comp/extension/CompExtension.h>
#include <sbml/packages/comp/sbml/Replacing.h>

LIBSBML_CPP_NAMESPACE_BEGIN


class LIBSBML_EXTERN ReplacedBy : public Replacing
{
public:

  /**
   * Creates a new ReplacedBy with the given level, version, and package
   * version.
   *
   * @param level the SBML Level
   * @param version the Version within the SBML Level
   * @param pkgVersion the version of the package
   */
  ReplacedBy(unsigned int level      = CompExtension::getDefaultLevel(),
             unsigned int version    = CompExtension::getDefaultVersion(),
             unsigned int pkgVersion = CompExtension::getDefaultPackageVersion());


  /**
   * Creates a new ReplacedBy with the given CompPkgNamespaces object.
   *
   * @param compns the namespace to use
   */
  ReplacedBy(CompPkgNamespaces* compns);


  /**
   * Copy constructor.
   */
  ReplacedBy(const ReplacedBy& source);


  /**
   * Assignment operator.
   */
  ReplacedBy& operator=(const ReplacedBy& source);


  /**
   * Creates and returns a deep copy of this ReplacedBy object.
   * 
   * @return a (deep) copy of this ReplacedBy object
   */
  virtual ReplacedBy* clone () const;


  /**
   * Destructor.
   */ 
  virtual ~ReplacedBy ();


  /**
   * Returns the XML element name of
   * this SBML object.
   *
   * @return the string of the name of this element.
   */
  virtual const std::string& getElementName () const ;


  /**
   * Returns the libSBML type code of this object instance.
   *
   * @copydetails doc_what_are_typecodes
   *
   * @return the SBML type code for this object:
   * @link SBMLCompTypeCode_t#SBML_COMP_REPLACEDBY SBML_COMP_REPLACEDBY@endlink
   *
   * @copydetails doc_warning_typecodes_not_unique
   *
   * @see getElementName()
   * @see getPackageName()
   */
  virtual int getTypeCode () const;


  /**
   * Finds this ReplacedBy's SBase parent, gets the &ldquo;comp&rdquo; plugin from it,
   * and tells that to remove this.
   *
   * @return integer value indicating success/failure of the
   * operation. The possible return values are:
   * @li @link OperationReturnValues_t#LIBSBML_OPERATION_SUCCESS LIBSBML_OPERATION_SUCCESS @endlink
   * @li @link OperationReturnValues_t#LIBSBML_OPERATION_FAILED LIBSBML_OPERATION_FAILED @endlink
   */
  virtual int removeFromParentAndDelete();


  /** @cond doxygenLibsbmlInternal */
  /**
   * Searches the model that @p oldnames came from for references to any of its ids,
   * and replaces them with references to @p newnames.  
   *
   * @param oldnames the object being replaced, and whose parent Model contains
   * the references that need to be updated.
   *
   * @param newnames the object that should now be referenced instead, to which 
   * any references to @p oldnames should now point.
   *
   * @return integer value indicating success/failure of the
   * operation. The possible return values are:
   * @li @link OperationReturnValues_t#LIBSBML_OPERATION_SUCCESS LIBSBML_OPERATION_SUCCESS @endlink
   * @li @link OperationReturnValues_t#LIBSBML_INVALID_OBJECT LIBSBML_INVALID_OBJECT @endlink
   */
  virtual int updateIDs(SBase* oldnames, SBase* newnames);
  /** @endcond */


  /** @cond doxygenLibsbmlInternal */
  /**
   * Accepts the given SBMLVisitor.
   *
   * @return the result of calling <code>v.visit()</code>, which indicates
   * whether or not the Visitor would like to visit the SBML object's next
   * sibling object (if available).
   */
  virtual bool accept (SBMLVisitor& v) const;
  /** @endcond */

  protected:
  /**
   * Updates all IDs and references to those IDs.  Does not actually
   * remove the now-redundant element!  The elements to be removed is instead 
   * added to 'toremove', allowing one to remove the element carefully
   * to prevent double-deletion of elements, and to allow the correct
   * interpretation of 'nested' replacements and deletions.
   *
   * The 'removed' argument is present to ensure that the replaced element was
   * not already removed, which would make it impossible to check it for its
   * old IDs.  In normal comp flattening, 'removed' will only contain comp elements,
   * which should usually not be replaced, only deleted.
   */
  virtual int performReplacementAndCollect(std::set<SBase*>* removed, std::set<SBase*>* toremove);
  friend class CompModelPlugin;

};


LIBSBML_CPP_NAMESPACE_END

#endif /* __cplusplus */


#ifndef SWIG

LIBSBML_CPP_NAMESPACE_BEGIN
BEGIN_C_DECLS

LIBSBML_EXTERN
ReplacedBy_t *
ReplacedBy_create(unsigned int level, unsigned int version,
                  unsigned int pkgVersion);


LIBSBML_EXTERN
void
ReplacedBy_free(ReplacedBy_t * rb);


LIBSBML_EXTERN
ReplacedBy_t *
ReplacedBy_clone(ReplacedBy_t * rb);


LIBSBML_EXTERN
char *
ReplacedBy_getSubmodelRef(ReplacedBy_t * rb);


LIBSBML_EXTERN
int
ReplacedBy_isSetSubmodelRef(ReplacedBy_t * rb);


LIBSBML_EXTERN
int
ReplacedBy_setSubmodelRef(ReplacedBy_t * rb, const char * submodelRef);


LIBSBML_EXTERN
int
ReplacedBy_unsetSubmodelRef(ReplacedBy_t * rb);


LIBSBML_EXTERN
int
ReplacedBy_hasRequiredAttributes(ReplacedBy_t * rb);



END_C_DECLS
LIBSBML_CPP_NAMESPACE_END


#endif  /* !SWIG */
#endif  /* ReplacedElement_H__ */
