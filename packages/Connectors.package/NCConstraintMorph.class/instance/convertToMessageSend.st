object fileIn
convertToMessageSend
	"If I have an old-style (i.e. BlockContext) constraintBlock,
	convert it if possible to a MessageSend that does the same thing"

	| pc |
	(constraint isMessageSend) ifTrue: [^self].	"already converted"
	self input == self ifTrue: [inputs := inputs allButFirst].
	(constraint isNil or: [inputs isEmpty or: [self input isNil]])
		ifTrue: 
			[self connectToNothing.
			^self].
	pc := self preferredConnection.
	pc ifNil: [self attachTo: self input at: self center]
		ifNotNil: [self perform: pc first withArguments: pc allButFirst]