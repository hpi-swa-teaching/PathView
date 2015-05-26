as yet unclassified
testShouldShowASuperclass
	| set |
	instance update.
	set := self allSubmorphsRecursiveFor: instance.
	self assert: [ self thereIsAStringMorphIn: set with: testClass superclass name asString ]