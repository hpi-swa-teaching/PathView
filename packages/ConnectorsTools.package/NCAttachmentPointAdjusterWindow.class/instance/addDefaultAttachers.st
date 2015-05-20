buttons
addDefaultAttachers
	target ifNil: [ ^self ].
	target attachmentPointSpecs: nil.
	self initializeOriginalPositionFor: target.
