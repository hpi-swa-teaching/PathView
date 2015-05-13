as yet unclassified
testShouldAllowCollapsing

	instance update.
	instance expandMorphs.
	self assert: [instance entries allSatisfy: [:morph | morph owner = instance]].
	instance collapseMorphs.
	self assert: [instance entries allSatisfy: [:morph | morph owner isNil]].