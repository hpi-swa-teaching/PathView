as yet unclassified
testShouldShowTheCategory

	instance update.
	self assert: [self 
		thereIsAStringMorphIn: (self allSubmorphsRecursiveFor: instance)
		with: self class testClassMethodsCategory].