buttons
toggleAttachers
	target ifNil: [ ^self ].
	target attachmentPointSpecs isEmpty ifTrue: [
		self addDefaultAttachers
	]
	ifFalse: [
		self deleteAttachers
	]
