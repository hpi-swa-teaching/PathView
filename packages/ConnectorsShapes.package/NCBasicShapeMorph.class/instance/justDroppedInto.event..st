dropping/grabbing
justDroppedInto: aMorph event: evt
	self adjustSubmorphPositions.
	self alignAttachmentPointsWithGridNear: evt position.
	super justDroppedInto: aMorph event: evt.
