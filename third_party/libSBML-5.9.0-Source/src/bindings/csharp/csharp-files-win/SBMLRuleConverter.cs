/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace libsbml {

 using System;
 using System.Runtime.InteropServices;

/** 
 * @sbmlpackage{core}
 *
@htmlinclude pkg-marker-core.html SBML converter for reordering rules and assignments in a
 * model.
 * 
 * @htmlinclude libsbml-facility-only-warning.html
 *
 * This converter reorders assignments in a model.  Specifically, it sorts
 * the list of assignment rules (i.e., the AssignmentRule objects contained
 * in the ListOfAssignmentRules within the Model object) and the initial
 * assignments (i.e., the InitialAssignment objects contained in the
 * ListOfInitialAssignments) such that, within each set, assignments that
 * depend on prior values are placed after the values are set.  For
 * example, if there is an assignment rule stating <i>a = b + 1</i>, and
 * another rule stating <i>b = 3</i>, the list of rules is sorted and the
 * rules are arranged so that the rule for <i>b = 3</i> appears @em before
 * the rule for <i>a = b + 1</i>.  Similarly, if dependencies of this
 * sort exist in the list of initial assignments in the model, the initial
 * assignments are sorted as well.
 *
 * Beginning with SBML Level 2, assignment rules have no ordering
 * required&mdash;the order in which the rules appear in an SBML file has
 * no significance.  Software tools, however, may need to reorder
 * assignments for purposes of evaluating them.  For example, for
 * simulators that use time integration methods, it would be a good idea to
 * reorder assignment rules such as the following,
 *
 * <i>b = a + 10 seconds</i><br>
 * <i>a = time</i>
 *
 * so that the evaluation of the rules is independent of integrator
 * step sizes. (This is due to the fact that, in this case, the order in
 * which the rules are evaluated changes the result.)  This converter
 * can be used to reorder the SBML objects regardless of whether the
 * input file contained them in the desired order.  Here is a code
 * fragment to illustrate how to do that:
 * @verbatim
ConversionProperties props;
props.addOption('sortRules', true, 'sort rules');

SBMLConverter converter;
converter.setProperties(&props);
converter.setDocument(&doc);
converter.convert(); 
@endverbatim
 * 
 * @note The two sets of assignments (list of assignment rules on the one
 * hand, and list of initial assignments on the other hand) are handled @em
 * independently.  In an SBML model, these entities are treated differently
 * and no amount of sorting can deal with inter-dependencies between
 * assignments of the two kinds.
 *
 * @see SBMLFunctionDefinitionConverter
 * @see SBMLInitialAssignmentConverter
 * @see SBMLLevelVersionConverter
 * @see SBMLStripPackageConverter
 * @see SBMLUnitsConverter
 */

public class SBMLRuleConverter : SBMLConverter {
	private HandleRef swigCPtr;
	
	internal SBMLRuleConverter(IntPtr cPtr, bool cMemoryOwn) : base(libsbmlPINVOKE.SBMLRuleConverter_SWIGUpcast(cPtr), cMemoryOwn)
	{
		//super(libsbmlPINVOKE.SBMLRuleConverterUpcast(cPtr), cMemoryOwn);
		swigCPtr = new HandleRef(this, cPtr);
	}
	
	internal static HandleRef getCPtr(SBMLRuleConverter obj)
	{
		return (obj == null) ? new HandleRef(null, IntPtr.Zero) : obj.swigCPtr;
	}
	
	internal static HandleRef getCPtrAndDisown (SBMLRuleConverter obj)
	{
		HandleRef ptr = new HandleRef(null, IntPtr.Zero);
		
		if (obj != null)
		{
			ptr             = obj.swigCPtr;
			obj.swigCMemOwn = false;
		}
		
		return ptr;
	}

  ~SBMLRuleConverter() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          libsbmlPINVOKE.delete_SBMLRuleConverter(swigCPtr);
        }
        swigCPtr = new HandleRef(null, IntPtr.Zero);
      }
      GC.SuppressFinalize(this);
      base.Dispose();
    }
  }

  public static void init() {
    libsbmlPINVOKE.SBMLRuleConverter_init();
  }

  
/**
   * Creates a new SBMLLevelVersionConverter object.
   */ public
 SBMLRuleConverter() : this(libsbmlPINVOKE.new_SBMLRuleConverter__SWIG_0(), true) {
  }

  
/**
   * Copy constructor; creates a copy of an SBMLLevelVersionConverter
   * object.
   *
   * @param obj the SBMLLevelVersionConverter object to copy.
   */ public
 SBMLRuleConverter(SBMLRuleConverter obj) : this(libsbmlPINVOKE.new_SBMLRuleConverter__SWIG_1(SBMLRuleConverter.getCPtr(obj)), true) {
    if (libsbmlPINVOKE.SWIGPendingException.Pending) throw libsbmlPINVOKE.SWIGPendingException.Retrieve();
  }

  
/**
   * Creates and returns a deep copy of this SBMLLevelVersionConverter
   * object.
   * 
   * @return a (deep) copy of this converter.
   */ public
 SBMLConverter clone() {
    IntPtr cPtr = libsbmlPINVOKE.SBMLRuleConverter_clone(swigCPtr);
    SBMLConverter ret = (cPtr == IntPtr.Zero) ? null : new SBMLConverter(cPtr, true);
    return ret;
  }

  
/**
   * Returns @c true if this converter object's properties match the given
   * properties.
   *
   * A typical use of this method involves creating a ConversionProperties
   * object, setting the options desired, and then calling this method on
   * an SBMLLevelVersionConverter object to find out if the object's
   * property values match the given ones.  This method is also used by
   * SBMLConverterRegistry::getConverterFor(@if java ConversionProperties props@endif)
   * to search across all registered converters for one matching particular
   * properties.
   * 
   * @param props the properties to match.
   * 
   * @return @c true if this converter's properties match, @c false
   * otherwise.
   */ public
 bool matchesProperties(ConversionProperties props) {
    bool ret = libsbmlPINVOKE.SBMLRuleConverter_matchesProperties(swigCPtr, ConversionProperties.getCPtr(props));
    if (libsbmlPINVOKE.SWIGPendingException.Pending) throw libsbmlPINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  
/** 
   * Perform the conversion.
   *
   * This method causes the converter to do the actual conversion work,
   * that is, to convert the SBMLDocument object set by
   * SBMLConverter::setDocument(@if java SBMLDocument doc@endif) and
   * with the configuration options set by
   * SBMLConverter::setProperties(@if java ConversionProperties props@endif).
   * 
   * @return  integer value indicating the success/failure of the operation.
   * @if clike The value is drawn from the enumeration
   * #OperationReturnValues_t. @endif The possible values are:
   * @li @link libsbmlcs.libsbml.LIBSBML_OPERATION_SUCCESS LIBSBML_OPERATION_SUCCESS @endlink
   * @li @link libsbmlcs.libsbml.LIBSBML_INVALID_OBJECT LIBSBML_INVALID_OBJECT @endlink
   * @li @link libsbmlcs.libsbml.LIBSBML_CONV_INVALID_SRC_DOCUMENT LIBSBML_CONV_INVALID_SRC_DOCUMENT @endlink
   */ public
 int convert() {
    int ret = libsbmlPINVOKE.SBMLRuleConverter_convert(swigCPtr);
    return ret;
  }

  
/**
   * Returns the default properties of this converter.
   * 
   * A given converter exposes one or more properties that can be adjusted
   * in order to influence the behavior of the converter.  This method
   * returns the @em default property settings for this converter.  It is
   * meant to be called in order to discover all the settings for the
   * converter object.
   *
   * @return the ConversionProperties object describing the default properties
   * for this converter.
   */ public
 ConversionProperties getDefaultProperties() {
    ConversionProperties ret = new ConversionProperties(libsbmlPINVOKE.SBMLRuleConverter_getDefaultProperties(swigCPtr), true);
    return ret;
  }

}

}
