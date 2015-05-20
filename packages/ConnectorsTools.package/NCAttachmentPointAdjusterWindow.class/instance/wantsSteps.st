stepping
wantsSteps
	^World currentHand submorphs isEmpty or: [
		(World currentHand submorphs first isSelectionMorph) not ]


