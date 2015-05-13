as yet unclassified
testShouldAllowRefreshingTheClass
	| set newName |
	set := self allSubmorphsRecursiveFor: instance.
	newName := self class testClassName, 'Renamed'.
	instance update.
	self assert: [ self thereIsAStringMorphIn: set with: self class testClassName ].
	testClass rename: newName.
	instance update.
	[self assert: [ self thereIsAStringMorphIn: set with: newName ]]
		ensure: [testClass rename: self class testClassName].