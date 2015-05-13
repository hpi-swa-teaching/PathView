testing
isSourceCodeEntityATestMethod
	self isInheritedTestSelector ifTrue: [^ true].
	(self parentSourceCodeEntityClass methodDict keys 
		includes: self sourceCodeEntity)
		ifTrue: [^ (self parentSourceCodeEntityClass >> 
					self sourceCodeEntity) isTestMethod]
		ifFalse: [^ (self parentSourceCodeEntityClass class >> 
					self sourceCodeEntity) isTestMethod]