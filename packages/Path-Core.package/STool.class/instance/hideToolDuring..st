user interface
hideToolDuring: aBlock
	self windowMorph hide.
	World restoreDisplay.
	^ aBlock 
		ensure: [self windowMorph show.
			World restoreDisplay].