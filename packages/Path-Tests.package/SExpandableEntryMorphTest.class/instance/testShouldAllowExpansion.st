as yet unclassified
testShouldAllowExpansion

	instance update.
	instance collapseMorphs.
	self assert: [instance entries allSatisfy: [:morph | morph owner isNil]].
	instance expandMorphs.
	self assert: [instance entries allSatisfy: [:morph | morph owner = instance]].