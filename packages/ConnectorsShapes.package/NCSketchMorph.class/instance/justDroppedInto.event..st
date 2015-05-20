dropping-grabbing
justDroppedInto: aMorph event: evt
	self alignAttachmentPointsWithGridNear: evt position.
	super justDroppedInto: aMorph event: evt.
