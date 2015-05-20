attachments
defaultAttachmentPointSpecs
	^ (super defaultAttachmentPointSpecs copy)
		at: 1 put: { #pointAtOffset: . (6/self width) @ (6 / self height) };
		yourself
