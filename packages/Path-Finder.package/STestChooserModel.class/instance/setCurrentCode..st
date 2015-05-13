actions
setCurrentCode: aSourceCodeString

	self test: aSourceCodeString.
	self changed: #isTestAvailable.
	aSourceCodeString 
		ifNil: [self resetCallTree.
	 		   ^ self].
	self analyzeTest.