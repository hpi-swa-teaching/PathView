*connectors-attachment points
attachmentPointSpecs
	^ self valueOfProperty: #attachmentPointSpecs
		ifAbsent: [ self defaultAttachmentPointSpecs ]