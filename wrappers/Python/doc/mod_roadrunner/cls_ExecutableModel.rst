.. py:class:: ExecutableModel(*args, **kwargs)
   :module: roadrunner

.. Floating Species Section

.. method:: ExecutableModel.getNumFloatingSpecies()
   :module: roadrunner

   Returns the number of floating species in the model.


.. method:: ExecutableModel.getFloatingSpeciesIds()

   Return a list of floating species sbml ids.


.. method:: ExecutableModel.getFloatingSpeciesAmountRates([index])
   Return a vector of floating species amount rates.

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: an array of the rates of change of the floating species amounts.
   :rtype: numpy.ndarray


.. method:: ExecutableModel.getFloatingSpeciesAmounts([index])
   :module: roadrunner

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


.. method:: ExecutableModel.getFloatingSpeciesConcentrations([index])

   Returns a vector of floating species concentrations. The order of species is
   given by the order of Ids returned by getFloatingSpeciesIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: an array of floating species concentrations.
   :rtype: numpy.ndarray


.. method:: ExecutableModel.evalInitialConditions()
   :module: roadrunner

.. method:: ExecutableModel.getBoundarySpeciesAmounts([index])
   :module: roadrunner

   Returns a vector of boundary species amounts. The order of species is
   given by the order of Ids returned by getBoundarySpeciesIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: an array of the boundary species amounts.
   :rtype: numpy.ndarray.

   given by the order of Ids returned by getBoundarySpeciesIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: an array of the boundary species amounts.
   :rtype: numpy.ndarray.


.. method:: ExecutableModel.getBoundarySpeciesConcentrations([index])
   :module: roadrunner

   Returns a vector of boundary species concentrations. The order of species is
   given by the order of Ids returned by getBoundarySpeciesIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: an array of the boundary species concentrations.
   :rtype: numpy.ndarray.

   given by the order of Ids returned by getBoundarySpeciesIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: an array of the boundary species concentrations.
   :rtype: numpy.ndarray.



.. method:: ExecutableModel.getBoundarySpeciesIds()
   :module: roadrunner

   Returns a vector of boundary species Ids.

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: a list of boundary species ids.

.. method:: ExecutableModel.getCompartmentIds([index])

   Returns a vector of compartment identifier symbols.

   :param index: A array of compartment indices indicating which compartment ids to return.
   :type index: None or numpy.ndarray
   :returns: a list of compartment ids.

.. method:: ExecutableModel.getCompartmentVolumes([index])

   Returns a vector of compartment volumes. The order of volumes is
   given by the order of Ids returned by getCompartmentIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: an array of compartment volumes.
   :rtype: numpy.ndarray.







.. method:: ExecutableModel.getGlobalParameterValues([index])
   :module: roadrunner

   Return a vector of global parameter values. The order of species is
   given by the order of Ids returned by getGlobalParameterIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: an array of global parameter values.
   :rtype: numpy.ndarray.



.. method:: ExecutableModel.getInfo()
   :module: roadrunner




.. method:: ExecutableModel.getModelName()
   :module: roadrunner

   Get the model name specified in the SBML.



.. method:: ExecutableModel.getNumBoundarySpecies()
   :module: roadrunner

   Returns the number of boundary species in the model.


.. method:: ExecutableModel.getNumCompartments()

   Returns the number of compartments in the model.

   :rtype: int


.. method:: ExecutableModel.getNumDependentSpecies()
   :module: roadrunner

   Returns the number of dependent floating species in the model.




.. method:: ExecutableModel.getNumGlobalParameters()
   :module: roadrunner


   Returns the number of global parameters in the model.


.. method:: ExecutableModel.getNumIndependentSpecies()
   :module: roadrunner

   Returns the number of independent floating species in the model.


.. method:: ExecutableModel.getNumReactions()
   :module: roadrunner

   Returns the number of reactions in the model.

.. method:: ExecutableModel.getNumRules()
   :module: roadrunner

   Returns the number of rules in the SBML model.


.. method:: ExecutableModel.getReactionIds()
   :module: roadrunner

   Returns a vector of reaction Ids.

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: a list of reaction ids.



.. method:: ExecutableModel.getReactionRates([index])
   :module: roadrunner

   Returns a vector of reaction rates for the current state of the model. The order of
   reaction rates is given by the order of Ids returned by getReactionIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: an array of reaction rates.
   :rtype: numpy.ndarray



.. method:: ExecutableModel.getTime()
   :module: roadrunner

   Not sure what this does


.. method:: ExecutableModel.reset()
   :module: roadrunner

   Reset the floating species concentration to their initial conditions.


.. method:: ExecutableModel.setBoundarySpeciesConcentrations([index], values)
   :module: roadrunner

   Use this to set the entire set of boundary species concentrations in one call.
   The order of species is given by the order of Ids returned by getBoundarySpeciesIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to set,
                               or if no index array is given, the first param should be an
                               array of all the  values to set.

   :param numpy.ndarray values: the values to set.


.. method:: ExecutableModel.setCompartmentVolumes([index], values)

   Sets a vector of compartment volumes.

   If the index vector is not give, then the values vector treated as a vector of all
   compartment volumes to set. If index is given, then  values should have the same
   length as index.

   :param numpy.ndarray index: (optional) an index array indicating which items to set,
                               or if no index array is given, the first param should be an
                               array of all the  values to set.

   :param numpy.ndarray values: the values to set.






.. method:: ExecutableModel.setFloatingSpeciesAmounts([index], values)
   :module: roadrunner

   Use this to set the entire set of floating species amounts in one call.
   The order of species is given by the order of Ids returned by getFloatingSpeciesIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to set,
                               or if no index array is given, the first param should be
                               an array of all the values to set.
   :param numpy.ndarray values: the values to set.



.. method:: ExecutableModel.setFloatingSpeciesConcentrations([index], values)
   :module: roadrunner

   Use this to set the entire set of floating species concentrations in one call.
   The order of species is given by the order of Ids returned by getFloatingSpeciesIds()


   :param numpy.ndarray index: (optional) an index array indicating which items to set,
                               or if no index array is given, the first param should be an
                               array of all the  values to set.
   :param numpy.ndarray values: the values to set.



.. method:: ExecutableModel.setGlobalParameterValues([index], values)
   :module: roadrunner

   Use this to set the entire set of global parameters in one call.
   The order of parameters is given by the order of Ids returned by getGlobalParameterIds()


   :param numpy.ndarray index: (optional) an index array indicating which items to set,
                               or if no index array is given, the first param should be an
                               array of all the values to set.
   :param numpy.ndarray values: the values to set.



.. method:: ExecutableModel.setTime(time)

   Set the model time variable. 


   :param time: time the time value to set.
   :returns: None



.. method:: ExecutableModel.getStoichiometry(speciesIndex, reactionIndex)

   Returns the stochiometric coefficient for the given species index and reaction index. 

   Frequently one does not need the full stochiometrix matrix, particularly if the system is 
   large and only a single coefficient is needed. 


   :param speciesIndex: a floating species index from :meth:`getFloatingSpeciesIds`
   :param reactionIndex: a reaction index from :meth:`getReactionIds`


.. method:: ExecutableModel.getStoichiometryMatrix()

   Returns the current stoichiometry matrix, a :math:`n \times m` matrix where :math:`n` is the
   number of species which take place in reactions (floating species) and :math:`m` is the number of
   reactions.

   this is a line with "quotes"

   When the LLVM back end is used (default) this always returns the current state of the
   stochiometric coefficients, so if any of these are determined by any rule, this will return the
   current value. 


   :returns: an n by m numpy ndarray of the stoichiometric coefficients. 
   :rtype: numpy.ndarray


.. method:: ExecutableModel.getStateVector([stateVector])
            
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

               
.. method:: ExecutableModel.getStateVectorId(index)

   Get the id (symbolic name) of a state vector item. 

   :param int index: the index of the desired state vector item
   :rtype: str

.. method:: ExecutableModel.getStateVectorIds()

   Returns a list of all state vector ids

   :rtype: list

.. method:: ExecutableModel.getStateVectorRate(time, [stateVector], [stateVectorRate])

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


.. method:: ExecutableModel.getNumConservedMoieties()

   Returns the number of conserved moieties in the model.

   :rtype: int


.. method:: ExecutableModel.getConservedMoietyIds([index])

   Returns a vector of conserved moiety identifier symbols.


   :param index: A array of compartment indices indicating which compartment ids to return.
   :type index: None or numpy.ndarray
   :returns: a list of compartment ids.

.. method:: ExecutableModel.getConservedMoietyValues([index])

   Returns a vector of conserved moiety volumes. The order of values is
   given by the order of Ids returned by getConservedMoietyIds()

   :param numpy.ndarray index: (optional) an index array indicating which items to return.
   :returns: an array of conserved moiety values.
   :rtype: numpy.ndarray.

.. method:: ExecutableModel.setConservedMoietyValues([index], values)

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

