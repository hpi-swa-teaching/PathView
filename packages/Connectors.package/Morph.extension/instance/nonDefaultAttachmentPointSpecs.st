*connectors-attachment points
nonDefaultAttachmentPointSpecs
	^ self valueOfProperty: #attachmentPointSpecs
		ifAbsent: [ #() ]