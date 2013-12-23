Example of libRoadRunner in Use
-------------------------------
Transcript from an Python session to demonstrate libRoadRunner use on this interactive Python console.
 

**Import** roardrunner and numpy::
   >>> import roadrunner
   >>> import roadrunner.testing
   >>> import numpy as n
   >>> import numpy.linalg as lin

**Load** an SBML model::
   >>> rr = roadrunner.RoadRunner()
   >>> rr.load(roadrunner.testing.getData('Test_1.xml'))
   True

Get the **model**, the model object has all the accessors sbml elements, names, values::
   >>> m = rr.getModel()

Use the built in RR function to get the **Jacobian**, notice this is returned as a native
numpy matrix, and display it::   
   >>> jac = rr.getFullJacobian()
   >>> jac
   array([[-0.2  ,  0.067,  0.   ],
          [ 0.15 , -0.467,  0.09 ],
          [ 0.   ,  0.4  , -0.64 ]])

Get a vector of **floating species amounts**, and display it::

   >>> amt = m.getFloatingSpeciesAmounts()
   >>> amt
   array([ 0.1 ,  0.25,  0.1 ])

Look at the **floating species ids**::
   
   >>> m.getFloatingSpeciesIds()
   ['S1', 'S2', 'S3']

Numpy has a huge amount of numeric capability, here we calculate
the **eigensystem from the Jacobian**.::

   >>> lin.eig(jac)
   (array([-0.15726345, -0.38237134, -0.76736521]), array([[ 0.77009381, -0.19510707,  0.03580588],
          [ 0.49121122,  0.53107368, -0.30320915],
          [ 0.40702219,  0.82455683,  0.95225109]]))

Suppose we wanted to calculate the matrix vector product of the **jacobian with the 
floating species amounts**, its a single statement, since we use native types.::

   >>> n.dot(jac, amt)
   array([-0.00325, -0.09275,  0.036  ])

Finally, you can of course **simulate over time**. The first column in result is time, 
the rest are whatever is selected. The easies way to plot is to use ``roadrunner.plot``::
   
   >>> results = rr.simulate()
   >>> roadrunner.plot(results) # doctest: +SKIP
