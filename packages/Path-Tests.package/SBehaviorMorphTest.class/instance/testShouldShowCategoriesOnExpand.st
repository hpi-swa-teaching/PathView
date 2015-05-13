testing
testShouldShowCategoriesOnExpand
	| set |
	instance update.
	instance expandMorphs.
	set := self allSubmorphsRecursiveFor: instance.
	self assert: [self thereIsAStringMorphIn: set with: self class testClassMethodsCategory ].
	instance collapseMorphs.