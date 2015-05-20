buttons
toggleAttachmentMode
	target ifNil: [ ^self ].
	target movableAttachments: target movableAttachments not.