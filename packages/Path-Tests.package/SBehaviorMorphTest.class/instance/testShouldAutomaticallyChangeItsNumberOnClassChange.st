testing
testShouldAutomaticallyChangeItsNumberOnClassChange
	| set |
	instance update.
	set := self allSubmorphsRecursiveFor: instance.
	self assert: [self thereIsAStringMorphIn: set with: self class testClassMethods keys size].
	testClass removeSelector: self class testClassMethods keys first.
	[self assert: [self 
			thereIsAStringMorphIn: set 
			with: self class testClassMethods keys size - 1]]
	ensure: [testClass compile: self class testClassMethods values first].