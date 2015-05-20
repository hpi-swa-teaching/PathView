dropping/grabbing
initializeOriginalPositionFor: aMorph
	aMorph displayedAttachmentPoints do: [ :ea | ea delete ].
	aMorph alignAttachmentPointsWithGridNear: aMorph position.
	originalPosition := aMorph position - self position.
	aMorph connectionTarget displayAttachmentPointsFor: self.
