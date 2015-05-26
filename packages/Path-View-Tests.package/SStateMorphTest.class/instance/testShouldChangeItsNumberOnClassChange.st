as yet unclassified
testShouldChangeItsNumberOnClassChange
	| set |
	instance update.
	set := self allSubmorphsRecursiveFor: instance.
	self assert: [self thereIsAStringMorphIn: set with: '2'].
	testClass addInstVarName: 'testIvar'.
	instance update.
	[self assert: [self 
			thereIsAStringMorphIn: set 
			with: '3']]
	ensure: [testClass removeInstVarName: 'testIvar'].