buttons
deleteAttachers
	target ifNil: [ ^self ].
	target attachmentPointSpecs: #().
	self initializeOriginalPositionFor: target.
