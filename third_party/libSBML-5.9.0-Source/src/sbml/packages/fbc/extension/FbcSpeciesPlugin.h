/**
 * @file    FbcSpeciesPlugin.h
 * @brief   Definition of FbcSpeciesPlugin, the plugin class of
 *          the fbc package for the Species element.
 * @author  Frank T. Bergmann
 *
 *<!---------------------------------------------------------------------------
 * This file is part of libSBML.  Please visit http://sbml.org for more
 * information about SBML, and the latest version of libSBML.
 *
 * Copyright 2009-2013 California Institute of Technology.
 * 
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation.  A copy of the license agreement is provided
 * in the file named "LICENSE.txt" included with this software distribution
 * and also available online as http://sbml.org/software/libsbml/license.html
 *------------------------------------------------------------------------- -->
 *
 * @class FbcSpeciesPlugin
 * @sbmlbrief{fbc} Implementation of the 'fbc' package extention to the
 * %Species construct.
 *
 * The Flux Balance Constraints package extends the SBML Level 3 Version 1 Core Species class with the addition of two attributes: 'charge' and 'chemicalFormula'.
 */

#ifndef FbcSpeciesPlugin_h
#define FbcSpeciesPlugin_h


#include <sbml/common/extern.h>
#include <sbml/common/sbmlfwd.h>
#include <sbml/packages/fbc/common/fbcfwd.h>

#ifdef __cplusplus

#include <sbml/SBMLErrorLog.h>
#include <sbml/Model.h>
#include <sbml/xml/XMLInputStream.h>
#include <sbml/xml/XMLOutputStream.h>
#include <sbml/extension/SBasePlugin.h>
#include <sbml/packages/fbc/sbml/FluxBound.h>
#include <sbml/packages/fbc/sbml/Objective.h>
#include <sbml/packages/fbc/sbml/GeneAssociation.h>

LIBSBML_CPP_NAMESPACE_BEGIN

class LIBSBML_EXTERN FbcSpeciesPlugin : public SBasePlugin
{
public:

  /**
   * Constructor
   */
  FbcSpeciesPlugin  (const std::string &uri, const std::string &prefix,
                    FbcPkgNamespaces *fbcns);


  /**
   * Copy constructor. Creates a copy of this FbcSpeciesPlugin object.
   */
  FbcSpeciesPlugin (const FbcSpeciesPlugin & orig);


  /**
   * Destroy this object.
   */
  virtual ~FbcSpeciesPlugin  ();


  /**
   * Assignment operator for FbcSpeciesPlugin .
   */
  FbcSpeciesPlugin & operator=(const FbcSpeciesPlugin & orig);


  /**
   * Creates and returns a deep copy of this FbcSpeciesPlugin  object.
   * 
   * @return a (deep) copy of this FbcSpeciesPlugin object
   */
  virtual FbcSpeciesPlugin * clone () const;

  /**
   * Predicate returning @c true or @c false depending on whether this
   * FbcSpeciesPlugin "charge" attribute has been set.
   *
   * @return @c true if this FbcSpeciesPlugin "charge" attribute has been set,
   * otherwise @c false is returned.
   */
  virtual bool isSetCharge() const;

  /**
   * Sets the value of the "charge" attribute of this FbcSpeciesPlugin.
   *
   * @return integer value indicating success/failure of the
   * function.  @if clike The value is drawn from the
   * enumeration #OperationReturnValues_t. @endif The only possible value
   * returned by this function is:
   * @li @link OperationReturnValues_t#LIBSBML_OPERATION_SUCCESS LIBSBML_OPERATION_SUCCESS @endlink
   */
  virtual int setCharge(int charge);

  /**
   * Returns the value of the "charge" attribute of this FbcSpeciesPlugin.
   *
   * @return the value of the "charge" attribute of this FbcSpeciesPlugin.
   */
  virtual int getCharge() const;

  /**
   * Unsets the value of the "charge" attribute of this FbcSpeciesPlugin.
   *
   * @return integer value indicating success/failure of the
   * function.  @if clike The value is drawn from the
   * enumeration #OperationReturnValues_t. @endif The only possible value
   * returned by this function is:
   * @li @link OperationReturnValues_t#LIBSBML_OPERATION_SUCCESS LIBSBML_OPERATION_SUCCESS @endlink
   */
  virtual int unsetCharge();

  /**
   * Predicate returning @c true or @c false depending on whether this
   * FbcSpeciesPlugin "chemicalFormula" attribute has been set.
   *
   * @return @c true if this FbcSpeciesPlugin "chemicalFormula" attribute has been set,
   * otherwise @c false is returned.
   */
  virtual bool isSetChemicalFormula() const;

  /**
   * Sets the value of the "chemicalFormula" attribute of this FbcSpeciesPlugin.
   * The format of chemicalFormula must consist only of atomic names (as in the Periodic Table) or user defined compounds either of which take the form of a single capital letter followed by zero or more lowercase letters. Where there is more than a single atom present, this is indicated with an integer. With regards to order (and enhance inter-operability) it is recommended to use the Hill system order.  (However, no error-checking is performed by this routine.)
   *
   * @return integer value indicating success/failure of the
   * function.  @if clike The value is drawn from the
   * enumeration #OperationReturnValues_t. @endif The only possible value
   * returned by this function is:
   * @li @link OperationReturnValues_t#LIBSBML_OPERATION_SUCCESS LIBSBML_OPERATION_SUCCESS @endlink
   */
  virtual int setChemicalFormula(const std::string& chemicalFormula);

  /**
   * Returns the value of the "chemicalFormula" attribute of this FbcSpeciesPlugin.
   *
   * @return the value of the "chemicalFormula" attribute of this FbcSpeciesPlugin.
   */
  virtual const std::string& getChemicalFormula() const;

  /**
   * Unsets the value of the "chemicalFormula" attribute of this FbcSpeciesPlugin.
   *
   * @return integer value indicating success/failure of the
   * function.  @if clike The value is drawn from the
   * enumeration #OperationReturnValues_t. @endif The only possible value
   * returned by this function is:
   * @li @link OperationReturnValues_t#LIBSBML_OPERATION_SUCCESS LIBSBML_OPERATION_SUCCESS @endlink
   */
  virtual int unsetChemicalFormula();
  

  // ---------------------------------------------------------
  //
  // virtual functions (internal implementation) which should
  // be overridden by subclasses.
  //
  // ---------------------------------------------------------

  /** @cond doxygenLibsbmlInternal */
  /**
   * Sets the parent SBMLDocument of this plugin object.
   *
   * Subclasses which contain one or more SBase derived elements must
   * override this function.
   *
   * @param d the SBMLDocument object to use
   *
   * @see connectToParent
   * @see enablePackageInternal
   */
  virtual void setSBMLDocument (SBMLDocument* d);
  /** @endcond */


  /** @cond doxygenLibsbmlInternal */
  /**
   * Sets the parent SBML object of this plugin object to
   * this object and child elements (if any).
   * (Creates a child-parent relationship by this plugin object)
   *
   * This function is called when this object is created by
   * the parent element.
   * Subclasses must override this this function if they have one
   * or more child elements.Also, SBasePlugin::connectToParent()
   * must be called in the overridden function.
   *
   * @param sbase the SBase object to use
   *
   * @see setSBMLDocument
   * @see enablePackageInternal
   */
  virtual void connectToParent (SBase *sbase);
  /** @endcond */


  /** @cond doxygenLibsbmlInternal */
  /**
   * Enables/Disables the given package with child elements in this plugin
   * object (if any).
   * (This is an internal implementation invoked from
   *  SBase::enablePakcageInternal() function)
   *
   * @note Subclasses in which one or more SBase derived elements are
   * defined must override this function.
   *
   * @see setSBMLDocument
   * @see connectToParent
   */
  virtual void enablePackageInternal(const std::string& pkgURI,
                                     const std::string& pkgPrefix, bool flag);
  /** @endcond */

protected:

  // --------------------------------------------------------
  //
  // overridden virtual functions for reading/writing/checking 
  // elements
  //
  // --------------------------------------------------------

  
  /** @cond doxygenLibsbmlInternal */
  /**
   * Subclasses should override this method to get the list of
   * expected attributes.
   * This function is invoked from corresponding readAttributes()
   * function.
   */
  virtual void addExpectedAttributes(ExpectedAttributes& attributes);
  /** @endcond */


  /** @cond doxygenLibsbmlInternal */
  /**
   * Reads the attributes of corresponding package in SBMLDocument element.
   */
  virtual void readAttributes (const XMLAttributes& attributes,
                               const ExpectedAttributes& expectedAttributes);
  /** @endcond */


  /** @cond doxygenLibsbmlInternal */
  /**
   * Writes the attributes of corresponding package in SBMLDocument element.
   */
  virtual void writeAttributes (XMLOutputStream& stream) const;
  /** @endcond */


  /*-- data members --*/

  /** @cond doxygenLibsbmlInternal */
  int mCharge;
  bool mIsSetCharge;
  std::string mChemicalFormula;
  /** @endcond */
};

LIBSBML_CPP_NAMESPACE_END

#endif  /* __cplusplus */
#ifndef SWIG

LIBSBML_CPP_NAMESPACE_BEGIN
BEGIN_C_DECLS

LIBSBML_EXTERN
int
FbcSpeciesPlugin_getCharge(SBasePlugin_t * fbc);


LIBSBML_EXTERN
int
FbcSpeciesPlugin_isSetCharge(SBasePlugin_t * fbc);


LIBSBML_EXTERN
int
FbcSpeciesPlugin_setCharge(SBasePlugin_t * fbc, int charge);


LIBSBML_EXTERN
int
FbcSpeciesPlugin_unsetCharge(SBasePlugin_t * fbc);


LIBSBML_EXTERN
char *
FbcSpeciesPlugin_getChemicalFormula(SBasePlugin_t * fbc);


LIBSBML_EXTERN
int
FbcSpeciesPlugin_isSetChemicalFormula(SBasePlugin_t * fbc);


LIBSBML_EXTERN
int
FbcSpeciesPlugin_setChemicalFormula(SBasePlugin_t * fbc, const char * chemform);


LIBSBML_EXTERN
int
FbcSpeciesPlugin_unsetChemicalFormula(SBasePlugin_t * fbc);

END_C_DECLS
LIBSBML_CPP_NAMESPACE_END

#endif  /* !SWIG */
#endif  /* FbcSpeciesPlugin_h */
