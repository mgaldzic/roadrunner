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
        
    @unittest.skip("test_SpeciesConcentrations expectappx")
    def test_SpeciesConcentrations(testId):
        line="S1 0.569694868238558\
        S2 0.208044382801664\
        S3 0.13002773925104"
        words = []
        species = []
        m = rrPython.getNumberOfFloatingSpecies()
        for i in range (0,m):
            line = readLine ()
            words = line.split()
            words.append (rrPython.getValue(words[0]))
            species.append (words)

        # Steady State Concentrations
        print string.ljust ("Check " + testId, rpadding),
        errorFlag = False
        for i in range (0,m):
            expectedValue =  float (species[i][1])
            if expectApproximately (expectedValue, species[i][2], 1E-6) == False:
                errorFlag = True
                break
        print passMsg (errorFlag)

    
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
