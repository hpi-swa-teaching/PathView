initialization
on: eventName send: selector to: recipient withValue: value 
	"NOTE: selector must take 3 arguments, as follows:
		value
		event
		sourceMorph"

	self handlers at: eventName
		put: (MessageSend 
				receiver: recipient
				selector: selector
				argument: value)