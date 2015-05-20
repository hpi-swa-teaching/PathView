submorphs-add/remove
addedMorph: m
	super addedMorph: m.
	self adjustSubmorphPositions
