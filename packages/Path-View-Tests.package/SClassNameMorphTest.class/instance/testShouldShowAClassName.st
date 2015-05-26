as yet unclassified
testShouldShowAClassName
	| set |
	instance update.
	set := self allSubmorphsRecursiveFor: instance.
	self assert: [ self thereIsAStringMorphIn: set with: self class testClassName ]