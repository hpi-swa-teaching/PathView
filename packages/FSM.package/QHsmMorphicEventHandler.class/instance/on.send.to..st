initialization
on: eventName send: selector to: recipient 
	"if selector and recipient are both nil, remove the handler"

	recipient ifNil: 
			[ handlers ifNotNil: [ handlers removeKey: eventName ifAbsent: [] ].
			^self].
	self handlers at: eventName
		put: (MessageSend receiver: recipient selector: selector)