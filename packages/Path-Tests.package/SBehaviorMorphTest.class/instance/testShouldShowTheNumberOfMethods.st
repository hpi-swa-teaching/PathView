testing
testShouldShowTheNumberOfMethods

	instance update.
	self assert: [ self 
		thereIsAStringMorphIn: (self allSubmorphsRecursiveFor: instance) 
		with: self class testClassMethods keys size asString ].