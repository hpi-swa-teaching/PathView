as yet unclassified
testShouldDisplayPinnedInstVarsAfterCollapse
	
	instance update.
	instance expandMorphs.
	(instance entries at: 1) togglePin.
	self assert: instance entries first isPinned.
	
	instance toggleExpansion.
	self deny: [instance expanded].
	self assert: [(instance entries at: 1) owner notNil].
	self assert: [(instance entries at: 2) owner isNil].
