actions
setCurrentTest: aMethodReference

	self test: aMethodReference.
	self changed: #isTestAvailable.
	aMethodReference 
		ifNil: [self resetCallTree.
	 		   ^ self].
	self analyzeTest.	