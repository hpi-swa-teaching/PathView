dropping/grabbing
refreshAttachers
	target displayedAttachmentPoints do: [ :ea | ea delete ].
	target connectionTarget displayAttachmentPointsFor: self.
