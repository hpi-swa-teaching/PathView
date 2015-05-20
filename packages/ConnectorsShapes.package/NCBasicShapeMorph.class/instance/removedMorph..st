submorphs-add/remove
removedMorph: m
	super removedMorph: m.
	self adjustSubmorphPositions
