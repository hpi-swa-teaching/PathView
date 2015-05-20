object fileIn
convertToCurrentVersion
	self convertToMessageSend.
	dieWithInput ifNil: [
		dieWithInput := (self valueOfProperty: #dieWithInput ifAbsent: [ false ]).
		self removeProperty: #dieWithInput.
	].
