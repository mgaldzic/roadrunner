# -*- coding: utf-8 -*-
##@Module rrRunSWIGTests
"""
Created on Tue Nov 05 20:17:20 2013

@author: mgaldzic
"""
#import sys
import unittest
import roadrunner # the swig roadrunner
#import random
#import string
#from numpy import *


RPADDING = 45
def passMsg (errorFlag):
    if errorFlag:
        return "*****FAIL*****"
    else:
        return "PASS"

class TestRoadRunnerFunctions(unittest.TestCase):
    r = roadrunner.RoadRunner()
    r.load('simple_test_model.xml')    
    
    def setUp(self):
        pass
        #self.r = roadrunner.RoadRunner()
        #self.r.load('simple_test_model.xml')
        #r.setConservationLaw(false) #TODO if needed
        # initialization sets this to false - no equivalent in swigapi?
      
    def test_Fluxes(self):
        line={'J1': 0.0715152565880721,
              'J2': 0.0715152565880721,
              'J3': 0.0715152565880721,
              'J4': 0.0715152565880721}
	expected = line
	actual = {}
        for id in expected:
	    actual[id] = self.r.model[id] #reaction fluxes

        for id in actual:
	    self.assertAlmostEqual(expected[id], actual[id], delta=1E-6)
        
    def test_SpeciesConcentrations(self):
        line={'S1': 0.569694868238558,
              'S2': 0.208044382801664,
              'S3': 0.13002773925104}

	expected = line
	actual = {}
	for k in self.r.model.getFloatingSpeciesIds():
	    actual[k] = self.r.model[k]
	
        # Steady State Concentrations
        for id in actual:
	    self.assertAlmostEqual(expected[id], actual[id], delta=1E-6)
    
    def test_myComputeSteadyState(self):
        print "test_myComputeSteadyState"
        print "Compute Steady State, distance to SteadyState: " + str(self.r.steadyState())
        self.assertTrue(True)
        
    def test_SetSteadyStateSelectionList(self):
        print "test_SetSteadyStateSelectionList"
        line ="S1 S2 S3"
        actual = self.r.steadyStateSelections = line.split()
        self.assertTrue(actual)

    def test_ReactionIds(self):
        print "test_ReactionIds"
        line = "J1 J2 J3 J4"
        expected = line.split()
        actual = self.r.model.getReactionIds()
        self.assertItemsEqual(expected, actual)
    
    def test_load(self):
        print "test_load"
        #print self.r.getInfo()
        self.assertTrue(self.r.load('simple_test_model.xml'))
    

    def test_isModelLoaded(self):
        print "test_isModelLoaded"
        print self.r.getuCC ('J1', 'k1') #Get unscaled control coefficient with
                                         #respect to a global parameter
        #print "getuCC J1"
        #print "k_1 " + str(self.r.getuCC ('J1', 'k_1'))
        #print "k2  " + str(self.r.getuCC ('J1', 'k2'))
        #print "k_2 " + str(self.r.getuCC ('J1', 'k_2'))
        #print "k3  " + str(self.r.getuCC ('J1', 'k3'))
        #print "k_3 " + str(self.r.getuCC ('J1', 'k_3'))
        #print "k4  " + str(self.r.getuCC ('J1', 'k4'))
        #print "k_4 " + str(self.r.getuCC ('J1', 'k_4'))
        self.assertTrue(self.r.isModelLoaded())

        
    #@unittest.skip("setConservationLaw cant find equivalent")
    #def test_setConservationLaw():
    #    pass

    #    line = readLine ()
    #    if line == 'True':
    #        rrPython.setComputeAndAssignConservationLaws(1)
    #    else:
    #        rrPython.setComputeAndAssignConservationLaws(0)

if __name__ == '__main__':
    unittest.main()
