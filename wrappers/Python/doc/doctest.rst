.. doctest::

   >>> print 1
   1


..doctest::


**Import** roardrunner and numpy::

   >>> import roadrunner
   >>> import roadrunner.testing
   >>> import numpy as n
   >>> import numpy.linalg as lin
   >>> rr = roadrunner.RoadRunner()
   >>> rr.load(roadrunner.testing.get_data('Test_1.xml'))
   True
   
   >>> rr.load(roadrunner.testing.getData('Test_1.xml'))
   True
