testing
testShouldChangeItsNumberOnRefresh
	| set |
	set := self allSubmorphsRecursiveFor: instance.
	instance update.
	self assert: [self thereIsAStringMorphIn: set with: self class testClassMethods keys size].
	testClass removeSelector: self class testClassMethods keys first.
	[instance update.
	self assert: [self 
			thereIsAStringMorphIn: set 
			with: self class testClassMethods keys size - 1]]
	ensure: [testClass compile: self class testClassMethods values first].