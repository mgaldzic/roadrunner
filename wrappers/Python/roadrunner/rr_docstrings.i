%feature("docstring") rr::ExecutableModel::getNumFloatingSpecies "
ExecutableModel.getNumFloatingSpecies()

Returns the number of floating species in the model.
";



%feature("docstring") rr::ExecutableModel::getFloatingSpeciesIds "
ExecutableModel.getFloatingSpeciesIds()

Return a list of floating species sbml ids.
";



%feature("docstring") rr::ExecutableModel::getFloatingSpeciesAmountRates "
ExecutableModel.getFloatingSpeciesAmountRates([index])
Return a vector of floating species amount rates.

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: an array of the rates of change of the floating species amounts.
:rtype: numpy.ndarray
";



%feature("docstring") rr::ExecutableModel::getFloatingSpeciesAmounts "
ExecutableModel.getFloatingSpeciesAmounts([index])

Get the list of floating species amounts. If no arguments are given, this
returns all floating species amounts.

:param index: an optional array of desired floating species indices. i.e. if this model has
              4 floating species and we want the amounts for the last and first, we
              would use [3,0] for the index array.
:type name: numpy.ndarray

get all the amounts::

  >>> e.getFloatingSpeciesAmounts()
  [15,2,3,20]

get amounts 3 and 0::

  >>> getFloatingSpeciesAmounts([3,0])
  [10,15]
";



%feature("docstring") rr::ExecutableModel::getFloatingSpeciesConcentrations "
ExecutableModel.getFloatingSpeciesConcentrations([index])

Returns a vector of floating species concentrations. The order of species is
given by the order of Ids returned by getFloatingSpeciesIds()

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: an array of floating species concentrations.
:rtype: numpy.ndarray
";



%feature("docstring") rr::ExecutableModel::evalInitialConditions "
ExecutableModel.evalInitialConditions()
";



%feature("docstring") rr::ExecutableModel::getBoundarySpeciesAmounts "
ExecutableModel.getBoundarySpeciesAmounts([index])

Returns a vector of boundary species amounts. The order of species is
given by the order of Ids returned by getBoundarySpeciesIds()

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: an array of the boundary species amounts.
:rtype: numpy.ndarray.

given by the order of Ids returned by getBoundarySpeciesIds()

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: an array of the boundary species amounts.
:rtype: numpy.ndarray.
";



%feature("docstring") rr::ExecutableModel::getBoundarySpeciesConcentrations "
ExecutableModel.getBoundarySpeciesConcentrations([index])

Returns a vector of boundary species concentrations. The order of species is
given by the order of Ids returned by getBoundarySpeciesIds()

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: an array of the boundary species concentrations.
:rtype: numpy.ndarray.

given by the order of Ids returned by getBoundarySpeciesIds()

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: an array of the boundary species concentrations.
:rtype: numpy.ndarray.
";



%feature("docstring") rr::ExecutableModel::getBoundarySpeciesIds "
ExecutableModel.getBoundarySpeciesIds()

Returns a vector of boundary species Ids.

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: a list of boundary species ids.
";



%feature("docstring") rr::ExecutableModel::getCompartmentIds "
ExecutableModel.getCompartmentIds([index])

Returns a vector of compartment identifier symbols.

:param index: A array of compartment indices indicating which compartment ids to return.
:type index: None or numpy.ndarray
:returns: a list of compartment ids.
";



%feature("docstring") rr::ExecutableModel::getCompartmentVolumes "
ExecutableModel.getCompartmentVolumes([index])

Returns a vector of compartment volumes. The order of volumes is
given by the order of Ids returned by getCompartmentIds()

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: an array of compartment volumes.
:rtype: numpy.ndarray.
";



%feature("docstring") rr::ExecutableModel::getGlobalParameterValues "
ExecutableModel.getGlobalParameterValues([index])

Return a vector of global parameter values. The order of species is
given by the order of Ids returned by getGlobalParameterIds()

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: an array of global parameter values.
:rtype: numpy.ndarray.
";



%feature("docstring") rr::ExecutableModel::getInfo "
ExecutableModel.getInfo()
";



%feature("docstring") rr::ExecutableModel::getModelName "
ExecutableModel.getModelName()

Get the model name specified in the SBML.
";



%feature("docstring") rr::ExecutableModel::getNumBoundarySpecies "
ExecutableModel.getNumBoundarySpecies()

Returns the number of boundary species in the model.
";



%feature("docstring") rr::ExecutableModel::getNumCompartments "
ExecutableModel.getNumCompartments()

Returns the number of compartments in the model.

:rtype: int
";



%feature("docstring") rr::ExecutableModel::getNumDependentSpecies "
ExecutableModel.getNumDependentSpecies()

Returns the number of dependent floating species in the model.
";



%feature("docstring") rr::ExecutableModel::getNumGlobalParameters "
ExecutableModel.getNumGlobalParameters()


Returns the number of global parameters in the model.
";



%feature("docstring") rr::ExecutableModel::getNumIndependentSpecies "
ExecutableModel.getNumIndependentSpecies()

Returns the number of independent floating species in the model.
";



%feature("docstring") rr::ExecutableModel::getNumReactions "
ExecutableModel.getNumReactions()

Returns the number of reactions in the model.
";



%feature("docstring") rr::ExecutableModel::getNumRules "
ExecutableModel.getNumRules()

Returns the number of rules in the SBML model.
";



%feature("docstring") rr::ExecutableModel::getReactionIds "
ExecutableModel.getReactionIds()

Returns a vector of reaction Ids.

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: a list of reaction ids.
";



%feature("docstring") rr::ExecutableModel::getReactionRates "
ExecutableModel.getReactionRates([index])

Returns a vector of reaction rates for the current state of the model. The order of
reaction rates is given by the order of Ids returned by getReactionIds()

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: an array of reaction rates.
:rtype: numpy.ndarray
";



%feature("docstring") rr::ExecutableModel::getTime "
ExecutableModel.getTime()

Not sure what this does
";



%feature("docstring") rr::ExecutableModel::reset "
ExecutableModel.reset()

Reset the floating species concentration to their initial conditions.
";



%feature("docstring") rr::ExecutableModel::setBoundarySpeciesConcentrations "
ExecutableModel.setBoundarySpeciesConcentrations([index], values)

Use this to set the entire set of boundary species concentrations in one call.
The order of species is given by the order of Ids returned by getBoundarySpeciesIds()

:param numpy.ndarray index: (optional) an index array indicating which items to set,
                            or if no index array is given, the first param should be an
                            array of all the  values to set.

:param numpy.ndarray values: the values to set.
";



%feature("docstring") rr::ExecutableModel::setCompartmentVolumes "
ExecutableModel.setCompartmentVolumes([index], values)

Sets a vector of compartment volumes.

If the index vector is not give, then the values vector treated as a vector of all
compartment volumes to set. If index is given, then  values should have the same
length as index.

:param numpy.ndarray index: (optional) an index array indicating which items to set,
                            or if no index array is given, the first param should be an
                            array of all the  values to set.

:param numpy.ndarray values: the values to set.
";



%feature("docstring") rr::ExecutableModel::setFloatingSpeciesAmounts "
ExecutableModel.setFloatingSpeciesAmounts([index], values)

Use this to set the entire set of floating species amounts in one call.
The order of species is given by the order of Ids returned by getFloatingSpeciesIds()

:param numpy.ndarray index: (optional) an index array indicating which items to set,
                            or if no index array is given, the first param should be
                            an array of all the values to set.
:param numpy.ndarray values: the values to set.
";



%feature("docstring") rr::ExecutableModel::setFloatingSpeciesConcentrations "
ExecutableModel.setFloatingSpeciesConcentrations([index], values)

Use this to set the entire set of floating species concentrations in one call.
The order of species is given by the order of Ids returned by getFloatingSpeciesIds()


:param numpy.ndarray index: (optional) an index array indicating which items to set,
                            or if no index array is given, the first param should be an
                            array of all the  values to set.
:param numpy.ndarray values: the values to set.
";



%feature("docstring") rr::ExecutableModel::setGlobalParameterValues "
ExecutableModel.setGlobalParameterValues([index], values)

Use this to set the entire set of global parameters in one call.
The order of parameters is given by the order of Ids returned by getGlobalParameterIds()


:param numpy.ndarray index: (optional) an index array indicating which items to set,
                            or if no index array is given, the first param should be an
                            array of all the values to set.
:param numpy.ndarray values: the values to set.
";



%feature("docstring") rr::ExecutableModel::setTime "
ExecutableModel.setTime(time)

Set the model time variable.


:param time: time the time value to set.
:returns: None
";



%feature("docstring") rr::ExecutableModel::getStoichiometry "
ExecutableModel.getStoichiometry(speciesIndex, reactionIndex)

Returns the stochiometric coefficient for the given species index and reaction index.

Frequently one does not need the full stochiometrix matrix, particularly if the system is
large and only a single coefficient is needed.


:param speciesIndex: a floating species index from :meth:`getFloatingSpeciesIds`
:param reactionIndex: a reaction index from :meth:`getReactionIds`
";



%feature("docstring") rr::ExecutableModel::getStoichiometryMatrix "
ExecutableModel.getStoichiometryMatrix()

Returns the current stoichiometry matrix, a :math:`n \\\\times m` matrix where :math:`n` is the
number of species which take place in reactions (floating species) and :math:`m` is the number of
reactions.

this is a line with \"quotes\"

When the LLVM back end is used (default) this always returns the current state of the
stochiometric coefficients, so if any of these are determined by any rule, this will return the
current value.


:returns: an n by m numpy ndarray of the stoichiometric coefficients.
:rtype: numpy.ndarray
";



%feature("docstring") rr::ExecutableModel::getStateVector "
ExecutableModel.getStateVector([stateVector])

Returns a vector of all the variables that represent the state of the system. The state is
considered all values which change with the dynamics of the model. This would include all species
which are produced or consumed by reactions, and all variables which are defined by rate rules.

Variables such as global parameters, compartments, or boundary species which do not change with
the model dynamics are considered parameters and are thus not part of the state.

In performance critical applications, the optional stateVector array should be provided where the
output variables will be written to.


:param numpy.ndarray stateVector: an optional numpy array where the state vector variables will be written. If
                    no state vector array is given, a new one will be constructed and returned.

                    This should be the same length as the model state vector.
:rtype: numpy.ndarray
";



%feature("docstring") rr::ExecutableModel::getStateVectorId "
ExecutableModel.getStateVectorId(index)

Get the id (symbolic name) of a state vector item.

:param int index: the index of the desired state vector item
:rtype: str
";



%feature("docstring") rr::ExecutableModel::getStateVectorIds "
ExecutableModel.getStateVectorIds()

Returns a list of all state vector ids

:rtype: list
";



%feature("docstring") rr::ExecutableModel::getStateVectorRate "
ExecutableModel.getStateVectorRate(time, [stateVector], [stateVectorRate])

Calculates the rate of change of all state vector variables.

Note, the rate of change of species returned by this method is always in units of amount /
time.


:param double time: the model time at which the calculation should be performed.
:param numpy.ndarray: (optional) the model state at which the calculation should be performed. If
                      this is not give, the current state is used.
:param numpy.ndarray: (optional) an output array where the rates of change will be written to. If
                      this is not given, a new array is allocated and returned.

:returns: an array of the rates of change of all state vector variables.
:rtype: numpy.ndarray
";



%feature("docstring") rr::ExecutableModel::getNumConservedMoieties "
ExecutableModel.getNumConservedMoieties()

Returns the number of conserved moieties in the model.

:rtype: int
";



%feature("docstring") rr::ExecutableModel::getConservedMoietyIds "
ExecutableModel.getConservedMoietyIds([index])

Returns a vector of conserved moiety identifier symbols.


:param index: A array of compartment indices indicating which compartment ids to return.
:type index: None or numpy.ndarray
:returns: a list of compartment ids.
";



%feature("docstring") rr::ExecutableModel::getConservedMoietyValues "
ExecutableModel.getConservedMoietyValues([index])

Returns a vector of conserved moiety volumes. The order of values is
given by the order of Ids returned by getConservedMoietyIds()

:param numpy.ndarray index: (optional) an index array indicating which items to return.
:returns: an array of conserved moiety values.
:rtype: numpy.ndarray.
";



%feature("docstring") rr::ExecutableModel::setConservedMoietyValues "
ExecutableModel.setConservedMoietyValues([index], values)

Sets a vector of conserved moiety values.

*Note* This method currently only updates the conserved moiety values, it does
not update the initial species condition from which the values were calculated.

If the index vector is not given, then the values vector treated as a vector of all
values to set. If index is given, then  values should have the same
length as index.

:param numpy.ndarray index: (optional) an index array indicating which items to set,
                            or if no index array is given, the first param should be an
                            array of all the  values to set.
:param numpy.ndarray values: the values to set.
";



%feature("docstring") rr::RoadRunner "
RoadRunner.__init__(uriOrSBML = "", options = None)

Creates a new RoadRunner object. If the first argument is specified,
it should be a string containing either the contents of an sbml document,
or a formated URI specifying the path or location of a sbml document.

If options is given, it shhould be a LoadSBMLOptions object.

If no arguments are given, a document may be loaded at any future time
using the load method.

:param uriOrSBML: a URI, local path or sbml document contents.
:type name: str (optional)

:param options: (LoadSBMLOptions) an options object specifying how the
                sbml document should be loaded
:type name: str (optional)
";



%feature("docstring") rr::RoadRunner::createSelection "
RoadRunner.createSelection(str)

Creates a new SelectionRecord for the given selection string.
";



%feature("docstring") rr::RoadRunner::getSteadyStateValues "
RoadRunner.getSteadyStateValues(*args)

Returns a vector of steady state values for the floating species. The order of
species in the vector is indicated by the order of species Ids in a call to
getFloatingSpeciesIds()
";



%feature("docstring") rr::RoadRunner::getCC "
RoadRunner.getCC(variable, parameter)

Returns a scaled control coefficient with respect to a global parameter.

For example::

  rr.getCC ('J1', 'Vmax')
  rr.getCC ('S1', 'Xo')
  rr.getCC ('S2', 'Km')

The first returns a flux control coefficient with respect to flux J1. The second and third
return concentration control coefficients with respect to speies S1 and S2.

:param variable: The id of a dependent variable of the coefficient, for example a
                 flux or species concentration.

:param parameter: The id of the independent parameter, for example a kinetic constant
                  or boundary species

:returns: the value of the control coefficeint returned to the caller.

:rtype: double
";



%feature("docstring") rr::RoadRunner::getuCC "
RoadRunner.getuCC(variableId, parameterId)

Get unscaled control coefficient with respect to a global parameter.

:param variableId: must be either a reaction or floating species.

:param parameterId: must be eithe a global parameter, boundary species, or
                    conserved sum.
";



%feature("docstring") rr::RoadRunner::getCompiler "
RoadRunner.getCompiler()

Return the compiler used to build the ExecutableModel.
";



%feature("docstring") rr::RoadRunner::getConfigurationXML "
RoadRunner.getConfigurationXML()

recurse through all of the child configurable objects that this
class ownes and build an assemble all of thier configuration parameters
into a single xml document which is returned as a string.

The value of this result depends on what child objects are presently loaded.
";



%feature("docstring") rr::RoadRunner::getConservationMatrix "
RoadRunner.getConservationMatrix()

Returns a conservation matrix :math:`\\\\Gamma` which is a :math:`c \\\\times m` matrix
where :math:`c` is the number of conservation laws and :math:`m` the number of species.
";



%feature("docstring") rr::RoadRunner::getCopyright "
RoadRunner.getCopyright()

Returns the copyright string
";



%feature("docstring") rr::RoadRunner::getEE "
RoadRunner.getEE(reactionId, parameterId, steadyState=True)

Retrieve a single elasticity coefficient with respect to a global parameter.

For example::

  x = rr.getEE ('J1', 'Vmax')

:param str variable: The dependent variable of the coefficient, for example a flux or
                     species concentration.
:param str parameter: The independent parameter, for example a kinetic constant or boundary
                      species
:param Boolean steadyState: should the steady state value be computed.
";



%feature("docstring") rr::RoadRunner::getuEE "
RoadRunner.getuEE(reactionId, parameterId)

Get unscaled elasticity coefficient with respect to a global parameter or species.
";



%feature("docstring") rr::RoadRunner::getEigenvalueIds "
RoadRunner.getEigenvalueIds()

returns a list of floating species ids with thier names
prefixed with ``eigen_``. For example, if the model contained
the floating species ``S1`` and ``S2``, this would return a list
containing \\\\[\"eigen_S1\", \"eigen_S2\"].
";



%feature("docstring") rr::RoadRunner::getEigenvalues "
RoadRunner.getEigenvalues(m)

Returns eigenvalues, first column real part, second column imaginary part.

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::getExtendedVersionInfo "
RoadRunner.getExtendedVersionInfo()

getVersion plus info about dependent libs versions.
";



%feature("docstring") rr::RoadRunner::getFloatingSpeciesAmountIds "
RoadRunner.getFloatingSpeciesAmountIds()

Returns a list of the floating species Ids, but with theIids surrounded
by square brackets, i.e. 'S1' -> '\\\\[S1]'
";



%feature("docstring") rr::RoadRunner::getFullJacobian "
RoadRunner.getFullJacobian()

Compute the full Jacobian at the current operating point.

This is the Jacobian of ONLY the floating species.
";



%feature("docstring") rr::RoadRunner::getFullyReorderedStoichiometryMatrix "
RoadRunner.getFullyReorderedStoichiometryMatrix()

Returns the full reordered stoichiometry matrix for the currently loaded model.
The rows will coresponds to the order of species in the call to getFloatinSpeciesIds(),
the colunms will corresponds to the order of reactions in the call to getReactionIds().
";



%feature("docstring") rr::RoadRunner::getInfo "
RoadRunner.getInfo()

return info about the current state of the object

:rtype: str
";



%feature("docstring") rr::RoadRunner::getInstanceCount "
RoadRunner.getInstanceCount()

Number of currently running RoadRunner instances.
";



%feature("docstring") rr::RoadRunner::getInstanceID "
RoadRunner.getInstanceID()

When there are multiple instances of RoadRunner, this is the instance id.
";



%feature("docstring") rr::RoadRunner::getIntegrator "
RoadRunner.getIntegrator()

get the integrator which is currently being used to
time evolve the system.
";



%feature("docstring") rr::RoadRunner::getL0Matrix "
RoadRunner.getL0Matrix()

Returns the L0 matrix for the current model. The L0 matrix is an (m-r) by r matrix that expresses
the dependent reaction rates in terms of the indepdent rates. m is the number of floating species
and r is the rank of the stoichiometry matrix.

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::getLinkMatrix "
RoadRunner.getLinkMatrix()

Returns the full link matrix, L for the current model. The Link matrix is an m by r matrix where m
is the number of floating species and r the rank of the stichiometric matrix, N.

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::getNrMatrix "
RoadRunner.getNrMatrix()

Returns the reduced stoichiometry matrix, :math:`N_R`, which wil have only r rows where r is the rank of
the full stoichiometry matrix. The matrix will be reordered such that the rows of :math:`N_R` are independent.

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::getParamPromotedSBML "
RoadRunner.getParamPromotedSBML(*args)

Takes an sbml document (in textual form) and changes all of the local parameters
to be global parameters.

:param str sbml: the contents of an sbml document
:rtype: str
";



%feature("docstring") rr::RoadRunner::getReducedJacobian "
RoadRunner.getReducedJacobian()

Returns the *reduced* Jacobian for the independent species. This matrix will be non-singular
for models that include moiety-concerved cycles.

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::getReorderedStoichiometryMatrix "
RoadRunner.getReorderedStoichiometryMatrix()

Returns the reordered stoichiometry matrix where the tops rows represent the independent species of
which there will be rank (N) and the bottom rows the dependent species.

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::getCurrentSBML "
RoadRunner.getCurrentSBML()

Returns the current state of the model in the form of an sbml string.

That is the SBML will reflect the current state of the model and not the
orginal SBML that was loaded into roadRunner.

:rtype: str
";



%feature("docstring") rr::RoadRunner::getSBML "
RoadRunner.getSBML()

Returns the original sbml model that was loaded into roadrunner.

:rtype: str
";



%feature("docstring") rr::RoadRunner::getScaledConcentrationControlCoefficientMatrix "
RoadRunner.getScaledConcentrationControlCoefficientMatrix()

Returns the m by n matrix of scaled conentration control coefficients where m is the number
of floating species and n the number of reactiohs.

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::getScaledFloatingSpeciesElasticity "
RoadRunner.getScaledFloatingSpeciesElasticity(reactionId, speciesId)

Returns the scaled elasticity for a given reaction and given species.

:param str reactionId: the sbml id of a reaction.
:param str speciesId: the sbml id of a species.
:rtype: double
";



%feature("docstring") rr::RoadRunner::getScaledFluxControlCoefficientMatrix "
RoadRunner.getScaledFluxControlCoefficientMatrix()

Returns the n by n matrix of scaled flux control coefficients where n is the number of reactions.

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::getScaledElasticityMatrix "
RoadRunner.getScaledElasticityMatrix()

Returns the scaled elasticity matrix at the current operating point.

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::getValue "
RoadRunner.getValue(sel)

Returns the value for a given selection.

:param sel: a selection that is either a string or a SelectionRecord that was
            obtained from createSelection
:type sel: str or SelectionRecord
";



%feature("docstring") rr::RoadRunner::getSelectedValues "
RoadRunner.getSelectedValues()

returns the values selected with SimulateOptions for the current model time / timestep

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::getSimulationResult "
RoadRunner.getSimulationResult()

get the simulation result in case one forgot to hold on to the simulate return value.

:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::selections "
";



%feature("docstring") rr::RoadRunner::createSelection "
RoadRunner.createSelection(sel)

Create a new selection based on a selection string

:rtype: roadrunner.SelectionRecord
";



%feature("docstring") rr::RoadRunner::getUnscaledConcentrationControlCoefficientMatrix "
RoadRunner.getUnscaledConcentrationControlCoefficientMatrix()

Returns the unscaled concentration control coefficent matrix.
";



%feature("docstring") rr::RoadRunner::getUnscaledElasticityMatrix "
RoadRunner.getUnscaledElasticityMatrix()

Returns the unscaled species elasticity matrix at the current operating point.
";



%feature("docstring") rr::RoadRunner::getUnscaledFluxControlCoefficientMatrix "
RoadRunner.getUnscaledFluxControlCoefficientMatrix()

Returns the unscaled flux control coefficient matrix.
";



%feature("docstring") rr::RoadRunner::getUnscaledSpeciesElasticity "
RoadRunner.getUnscaledSpeciesElasticity(reactionIndx, speciesIndx)

Get a single species elasticity value.
IMPORTANT:
Assumes that the reaction rates have been precomputed at the operating point !!

:param int reactionIndx: index of reactionl
:param int speciesIndx: index of species.
";



%feature("docstring") rr::RoadRunner::__version__ "
RoadRunner.__version__()

Returns the current version of the roadRunner library.
";



%feature("docstring") rr::RoadRunner::getlibSBMLVersion "
RoadRunner.getlibSBMLVersion()

Returns theversion of the libSBML library that is currently being used.
";



%feature("docstring") rr::RoadRunner::isModelLoaded "
RoadRunner.isModelLoaded()

Return True if model was loaded; False otherwise
";



%feature("docstring") rr::RoadRunner::load "
RoadRunner.load(uriOrDocument)

Loads an sbml document, given a string for file path, uri, or contents.

This method also accepts http uri for remote files, however this feature is currently limited
to the Mac version, plan on enabling http loading of SBML documents on Windows and Linux
shortly.

Some examples of loading files on Mac or Linux::

    >>> r.load(\"myfile.xml\")                               # load a file from the current dirctory
    >>> r.load(\"/Users/Fred/myfile.xml\")                   # absolute path
    >>> r.load(\"http://sbml.org/example_system.xml\")       # remote file


Or on Windows:

    >>> r.load(\"myfile.xml\")                                  # load a file from the current dirctory
    >>> r.load(\"file://localhost/c:/Users/Fred/myfile.xml\")   # using a uri

One may also load the contents of a document::
    >>> myfile = open(\"myfile.xml, \"r\")
    >>> contents = file.read()
    >>> r.load(contents)

In future version, we will also support loading directly from a libSBML Dcoument object.

:param uriOrDocument: A string which may be a local path, URI or contents of an SBML document.
:type name: str
";



%feature("docstring") rr::RoadRunner::model "
:annotation: None

Get the currently loaded model. The model object contains the enite state of the SBML model.
";



%feature("docstring") rr::RoadRunner::oneStep "
RoadRunner.oneStep(startTime, stepSize)

Carry out a one step integration of the model. The method takes two arguments,
the current time and the step size to us in the integration. The method returns
the new time which will be currentTime + StepSize::

    newTime = rr.oneStep (10, 0.5)
";



%feature("docstring") rr::RoadRunner::reset "
RoadRunner.reset()

This method resets all the floating species concentrations to their initial values.
";



%feature("docstring") rr::RoadRunner::setConfigurationXML "
RoadRunner.setConfigurationXML(*args)

given a xml document, which should have been returned from getConfigurationXML,
this method recurses though all the child configurable elements and sets thier
configuration to the values specified in the document.

:param str xml: the contents of an xml document.
";



%feature("docstring") rr::RoadRunner::conservedMoietyAnalysis "

Enables / Disables conserved moiety analysis (boolean).

If this is enabled, the sbml document (either current, or one about to be loaded)
is converted using the ConservedMoietyConverter. All of the linearly dependent
species are replaced with assignment rules and a new set of conserved moeity
parameters are introduced.
";



%feature("docstring") rr::RoadRunner::simulate "
RoadRunner.simulate(*args)

Simulate the current SBML model.

There are a number of ways to call simulate.

1. With no arguments. In this case, the current set of `SimulateOptions` will
   be used for the simulation. The current set may be changed either directly
   via setSimulateOptions() or with one of the two alternate ways of calling
   simulate.

2: With single `SimulateOptions` argument. In this case, all of the settings
   in the given options are copied and will be used for the current and future
   simulations.

3: With the three positions arguments, `timeStart`, `timeEnd`, `steps`. In this case
   these three values are copied and will be used for the current and future simulations.

The options given in the 2nd and 3rd forms will remain in effect until changed. So, if
one calls::

  rr.simulate (0, 3, 100)

The start time of 0, end time of 3 and steps of 100 will remain in effect, so that if this
is followed by a call to::

  rr.simulate()

This simulation will use the previous values.

:returns: a numpy array with each selected output timeseries being a
          column vector, and the 0'th column is the simulation time.
:rtype: numpy.ndarray
";



%feature("docstring") rr::RoadRunner::simulateOptions "
:annotation: None

Get the SimulateOptions object where simulation options may be set.




.. py:function:: RoadRunner_getCopyright()

Returns the copyright string



.. py:function:: RoadRunner_getExtendedVersionInfo()

getVersion plus info about dependent libs versions.



.. py:function:: RoadRunner_getParamPromotedSBML(*args)

Takes an sbml document (in textual form) and changes all of the local parameters
to be global parameters.

:param str sbml: the contents of an sbml document
:rtype: str
";



%feature("docstring") rr::RoadRunner::evalModel "
RoadRunner.evalModel()

Evaluates the current model, that is it updates the rates of change and any assignments in the model.
It does *not* carry out an integration step.

:returns: Returns true if successful


Steady State Section
____________________
";



%feature("docstring") rr::RoadRunner::steadyStateSelections "

A list of SelectionRecords which determine what values are used for
a steady state calculation. This list may be set by assigning a list
of valid selection symbols::

  r.steadyStateSelections = \\\\['S1', '\\\\[S2]', 'P1']
";



%feature("docstring") rr::RoadRunner::steadyState "
RoadRunner.steadyState()

Attempt to evaluate the steady state for the model. The method returns
a value that indicates how close the solution is to the steady state.
The smaller the value the better. Values less than 1E-6 usually indicate a
steady state has been found. If necessary the method can be called a
second time to improve the solution.

:returns: the sum of squares of the steady state solution.

:rtype: double
";



%feature("docstring") rr::RoadRunner::getSteadyStateValues "
RoadRunner.getSteadyStateValues()

Performs a steady state calculation (evolves the system to a steady
state), then calculates and returns the set of values specifed by
the steady state selections.

:returns: a numpy array corresponding to the values specified by steadyStateSelections

:rtype: numpy.ndarray
";



%feature("docstring") rr::SelectionRecord "
SelectionRecord.__init__(str)
Create a new selection record. This constructor really should not be called,
SelectionRecords should be created by the RoadRunner.createSelection
";



%feature("docstring") rr::SelectionRecord::TIME "

";



%feature("docstring") rr::SelectionRecord::CONCENTRATION "

";



%feature("docstring") rr::SelectionRecord::AMOUNT "

species must have either a CONCENTRATION or AMOUNT
modifer to distinguish it.
";



%feature("docstring") rr::SelectionRecord::RATE "

";



%feature("docstring") rr::SelectionRecord::BOUNDARY "

";



%feature("docstring") rr::SelectionRecord::FLOATING "

";



%feature("docstring") rr::SelectionRecord::REACTION "

";



%feature("docstring") rr::SelectionRecord::INITIAL "

";



%feature("docstring") rr::SelectionRecord::CURRENT "

";



%feature("docstring") rr::SelectionRecord::UNSCALED "

";



%feature("docstring") rr::SelectionRecord::ELASTICITY "

";



%feature("docstring") rr::SelectionRecord::CONTROL "

";



%feature("docstring") rr::SelectionRecord::EIGENVALUE "

";



%feature("docstring") rr::SelectionRecord::ELEMENT "

";



%feature("docstring") rr::SelectionRecord::STOICHIOMETRY "

";



%feature("docstring") rr::SelectionRecord::UNKNOWN "

";



%feature("docstring") rr::SelectionRecord::DEPENDENT "

";



%feature("docstring") rr::SelectionRecord::INDEPENDENT "

";



%feature("docstring") rr::SelectionRecord::CONSREVED_MOIETY "

";



%feature("docstring") rr::SelectionRecord::UNKNOWN_CONCENTRATION "

";



%feature("docstring") rr::SelectionRecord::COMPARTMENT "

";



%feature("docstring") rr::SelectionRecord::GLOBAL_PARAMETER "

";



%feature("docstring") rr::SelectionRecord::FLOATING_AMOUNT "

";



%feature("docstring") rr::SelectionRecord::BOUNDARY_AMOUNT "

";



%feature("docstring") rr::SelectionRecord::BOUNDARY_CONCENTRATION "

";



%feature("docstring") rr::SelectionRecord::FLOATING_CONCENTRATION "

";



%feature("docstring") rr::SelectionRecord::FLOATING_AMOUNT_RATE "

";



%feature("docstring") rr::SelectionRecord::FLOATING_CONCENTRATION_RATE "

";



%feature("docstring") rr::SelectionRecord::REACTION_RATE "

";



%feature("docstring") rr::SelectionRecord::INITIAL_FLOATING_AMOUNT "

";



%feature("docstring") rr::SelectionRecord::INITIAL_FLOATING_CONCENTRATION "

";



%feature("docstring") rr::SelectionRecord::UNSCALED_ELASTICITY "

";



%feature("docstring") rr::SelectionRecord::UNSCALED_CONTROL "

";



%feature("docstring") rr::SelectionRecord::UNKNOWN_ELEMENT "

";



%feature("docstring") rr::SelectionRecord::ALL "

";



%feature("docstring") rr::SelectionRecord::ALL_INDEPENDENT "

";



%feature("docstring") rr::SelectionRecord::ALL_DEPENDENT "

";



%feature("docstring") rr::SelectionRecord::ALL_INDEPENDENT_AMOUNT "

";



%feature("docstring") rr::SelectionRecord::ALL_DEPENDENT_AMOUNT "

";



%feature("docstring") rr::SelectionRecord::ALL_INDEPENDENT_CONCENTRATION "

";



%feature("docstring") rr::SelectionRecord::ALL_DEPENDENT_CONCENTRATION "

";



%feature("docstring") rr::SelectionRecord::index "
:annotation: int
";



%feature("docstring") rr::SelectionRecord::p1 "
:annotation: str
";



%feature("docstring") rr::SelectionRecord::p2 "
:annotation: str
";



%feature("docstring") rr::SelectionRecord::selectionType "
:annotation: int
";



%feature("docstring") rr::SimulateOptions::integratorFlags "

A bitfield which may contain the following options. In python these options are
also available as separate properties which set the integratorFlags bitfield.
";



%feature("docstring") rr::SimulateOptions::STIFF "

Use the stiff (implicit) integrator. Defaults to off.
";



%feature("docstring") rr::SimulateOptions::MULTI_STEP "

* Experimental *

Perform a multi-step simulation. In multi-step simulation, one may monitor
the variable time stepping via the IntegratorListener events system.
";



%feature("docstring") rr::SimulateOptions::absolute "

A number representing the absolute difference permitted for the integrator
tolerance.
";



%feature("docstring") rr::SimulateOptions::amounts "


A list of the variable whose output in the results file is in amount
(not concentration) units. This list of variables must be a subset of
the names listed in variables.
";



%feature("docstring") rr::SimulateOptions::concentrations "


A list of the variable whose output in the results file is in concentration
(not amount) units. This list of variables must be a subset of the names
listed in variables.
";



%feature("docstring") rr::SimulateOptions::duration "


The duration of the simulation run, in the model's units of time. Note,
setting the duration automatically sets the end time and visa versa.
";



%feature("docstring") rr::SimulateOptions::end "


The simulation end time. Note, setting the end time automatically sets the
duration accordingly and visa versa.
";



%feature("docstring") rr::SimulateOptions::flags "


can be set to ResetModel so that the model is reset to its initial state
when the simulation is run.
";



%feature("docstring") rr::SimulateOptions::relative "


A float-point number representing the relative difference permitted.
Defaults 0.0001
";



%feature("docstring") rr::SimulateOptions::resetModel "


Causes the model to be reset to the original conditions specified
in the SBML when the simulation is run.
";



%feature("docstring") rr::SimulateOptions::start "


The start time of the simulation time-series data.
Often this is 0, but not necessarily.
";



%feature("docstring") rr::SimulateOptions::steps "


The number of steps at which the output is sampled. The samples are evenly spaced.
When a simulation system calculates the data points to record, it will typically
divide the duration by the number of time steps. Thus, for X steps, the output
will have X+1 data rows.
";



%feature("docstring") rr::SimulateOptions::stiff "


Use the stiff integrator.
";



%feature("docstring") rr::SimulateOptions::variables "


The variables (in addition to time) whose values will be saved in the result.
These are SBML model id's. Order is significant, as this determines the order
of the columns in the result matrix.

Important: if a symbol in this list refers to a species in the model,
then that symbol should also be listed in either the amount or concentration
lists below. If a species symbol is listed in variables, but is not listed
in either amounts or concentrations, then it defaults to an amount value.

The ordering of the symbols in variable is what determines the output
ordering. The order of symbols in either amounts or concentrations do not
effect the output ordering.

NOTE:If a listed variable has two underscores in it ('__'), that variable
is actually present only in a submodel of the main model, from the
Hierarchical Model Composition package, in the format submodelID__variableID.
If the model is flattened, the variable will appear automatically.
";



%feature("docstring") rr::SimulateOptions::initialTimeStep "

A user specified initial time step. If this is <=  0, the integrator
will attempt to determine a safe initial time step.

Note, for each number of steps given to RoadRunner.simulate or RoadRunner.integrate
the internal integrator may take many many steps to reach one of the external time
steps. This value specifies an initial value for the internal integrator
time step.
";



%feature("docstring") rr::SimulateOptions::minimumTimeStep "

Specify the minimum time step that the internal integrator
will use. Uses integrator estimated value if <= 0.
";



%feature("docstring") rr::SimulateOptions::maximumTimeStep "

Specify the maximum time step size that the internal integrator
will use. Uses integrator estimated value if <= 0.
";



%feature("docstring") rr::SimulateOptions::maximumNumSteps "

Specify the maximum number of steps the internal integrator will use
before reaching the user specified time span. Uses the integrator
default value if <= 0.
";



%feature("docstring") rr::Logger::LOG_FATAL "

A fatal error. The application will most likely terminate. This is the highest priority.
";



%feature("docstring") rr::Logger::LOG_CRITICAL "

A critical error. The application might not be able to continue running successfully.
";



%feature("docstring") rr::Logger::LOG_ERROR "

An error. An operation did not complete successfully, but the application as a whole is not affected.
";



%feature("docstring") rr::Logger::LOG_WARNING "

A warning. An operation completed with an unexpected result.
";



%feature("docstring") rr::Logger::LOG_NOTICE "

A notice, which is an information with just a higher priority.
";



%feature("docstring") rr::Logger::LOG_INFORMATION "

An informational message, usually denoting the successful completion of an operation.
";



%feature("docstring") rr::Logger::LOG_DEBUG "

A debugging message.
";



%feature("docstring") rr::Logger::LOG_TRACE "

A tracing message. This is the lowest priority.
";



%feature("docstring") rr::Logger::setLevel "
Logger.setLevel([level])

sets the logging level to one a value from Logger::Level

:param int level: the level to set, defaults to LOG_CURRENT if none is specified.

Logging Methods
---------------
";



%feature("docstring") rr::Logger::getLevel "
Logger.getLevel()

get the current logging level.
";



%feature("docstring") rr::Logger::disableLogging "
Logger.disableLogging()

Suppresses all logging output
";



%feature("docstring") rr::Logger::disableConsoleLogging "
Logger.disableConsoleLogging()

stops logging to the console, but file logging may continue.
";



%feature("docstring") rr::Logger::enableConsoleLogging "
Logger.enableConsoleLogging(level)

turns on console logging (stderr) at the given level.

:param level: A logging level, one of the above listed LOG_* levels.
";



%feature("docstring") rr::Logger::enableFileLogging "
Logger.enableFileLogging(fileName, [level])

turns on file logging to the given file as the given level.

:param str fileName: the path of a file to log to.
:param level: (optional) the logging level, defaults to LOG_CURRENT.
";



%feature("docstring") rr::Logger::disableFileLogging "
Logger.disableFileLogging()

turns off file logging, but has no effect on console logging.
";



%feature("docstring") rr::Logger::getCurrentLevelAsString "
Logger.getCurrentLevelAsString()

get the textural form of the current logging level.
";



%feature("docstring") rr::Logger::getFileName "
Logger.getFileName()

get the name of the currently used log file.
";



%feature("docstring") rr::Logger::setFormattingPattern "
Logger.setFormattingPattern(format)

Internally, RoadRunner uses the Poco logging framework, so we
can custom format logging output based on a formatting pattern
string.

The format pattern is used as a template to format the message and
is copied character by character except for the following special characters,
which are replaced by the corresponding value.

An example pattern of \"%Y-%m-%d %H:%M:%S %p: %t\"

would produce the following output:

::

   2013-10-25 14:12:45 Fatal: console and file: A fatal error
   2013-10-25 14:12:45 Critical: console and file: A critical error
   2013-10-25 14:12:45 Error: console and file: An error
   2013-10-25 14:12:45 Warning: console and file: A warning.
   2013-10-25 14:12:45 Notice: console and file: A notice.

The following formatting pattern descriptions is copied from the
Poco documentation:

* %s - message source
* %t - message text
* %l - message priority level (1 .. 7)
* %p - message priority (Fatal, Critical, Error, Warning, Notice, Information, Debug, Trace)
* %q - abbreviated message priority (F, C, E, W, N, I, D, T)
* %P - message process identifier
* %T - message thread name
* %I - message thread identifier (numeric)
* %N - node or host name
* %U - message source file path (empty string if not set)
* %u - message source line number (0 if not set)
* %w - message date/time abbreviated weekday (Mon, Tue, ...)
* %W - message date/time full weekday (Monday, Tuesday, ...)
* %b - message date/time abbreviated month (Jan, Feb, ...)
* %B - message date/time full month (January, February, ...)
* %d - message date/time zero-padded day of month (01 .. 31)
* %e - message date/time day of month (1 .. 31)
* %f - message date/time space-padded day of month ( 1 .. 31)
* %m - message date/time zero-padded month (01 .. 12)
* %n - message date/time month (1 .. 12)
* %o - message date/time space-padded month ( 1 .. 12)
* %y - message date/time year without century (70)
* %Y - message date/time year with century (1970)
* %H - message date/time hour (00 .. 23)
* %h - message date/time hour (00 .. 12)
* %a - message date/time am/pm
* %A - message date/time AM/PM
* %M - message date/time minute (00 .. 59)
* %S - message date/time second (00 .. 59)
* %i - message date/time millisecond (000 .. 999)
* %c - message date/time centisecond (0 .. 9)
* %F - message date/time fractional seconds/microseconds (000000 - 999999)
* %z - time zone differential in ISO 8601 format (Z or +NN.NN)
* %Z - time zone differential in RFC format (GMT or +NNNN)
* %E - epoch time (UTC, seconds since midnight, January 1, 1970)
* %[name] - the value of the message parameter with the given name
* %% - percent sign

:param str format: the logging format string. Must be formatted using the above specifiers.
";



%feature("docstring") rr::Logger::getFormattingPattern "
Logger.getFormattingPattern()

get the currently set formatting pattern.
";



%feature("docstring") rr::Logger::levelToString "
Logger.levelToString(level)

gets the textual form of a logging level Enum for a given value.

:param int level: One of the above listed logging levels.
";



%feature("docstring") rr::Logger::stringToLevel "
Logger.stringToLevel(s)

parses a string and returns a Logger::Level

:param str s: the string to parse.
";



%feature("docstring") rr::Logger::getColoredOutput "
Logger.getColoredOutput()

check if we have colored logging enabled.
";



%feature("docstring") rr::Logger::setColoredOutput "
Logger.setColoredOutput(b)

enable / disable colored output

:param boolean b: turn colored logging on or off
";



%feature("docstring") rr::Logger::setProperty "
Logger.setProperty(name, value)

Set the color of the output logging messages.

In the future, we may add additional properties here.

The following properties are supported:

* enableColors:      Enable or disable colors.
* traceColor:        Specify color for trace messages.
* debugColor:        Specify color for debug messages.
* informationColor:  Specify color for information messages.
* noticeColor:       Specify color for notice messages.
* warningColor:      Specify color for warning messages.
* errorColor:        Specify color for error messages.
* criticalColor:     Specify color for critical messages.
* fatalColor:        Specify color for fatal messages.


The following color values are supported:

* default
* black
* red
* green
* brown
* blue
* magenta
* cyan
* gray
* darkgray
* lightRed
* lightGreen
* yellow
* lightBlue
* lightMagenta
* lightCyan
* white

:param str name: the name of the value to set.
:param str value: the value to set.
";



%feature("docstring") rr::Logger::log "
Logger.log(level, msg)

logs a message to the log.

:param int level: the level to log at.
:param str msg: the message to log.
";



