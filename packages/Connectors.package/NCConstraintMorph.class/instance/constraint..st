constraints
constraint: aBlockOrMessageSend 
	"aBlock is passed self and all of my inputs (some of which could be nil).
	It should return a Point"

	constraint := (aBlockOrMessageSend isKindOf: BlockContext) 
				ifTrue: [self error: 'BlockContexts aren''t used anymore']
				ifFalse: [aBlockOrMessageSend].
	aBlockOrMessageSend ifNotNil: [self startStepping]