as yet unclassified
testShouldAutomaticallyRefreshTheClass
	| set newName |
	instance update.
	set := self allSubmorphsRecursiveFor: instance.
	newName := self class testClassName, 'Renamed'.
	self assert: [ self thereIsAStringMorphIn: set with: self class testClassName ].
	testClass rename: newName.
	[self assert: [ self thereIsAStringMorphIn: set with: newName ]]
		ensure: [testClass rename: self class testClassName].