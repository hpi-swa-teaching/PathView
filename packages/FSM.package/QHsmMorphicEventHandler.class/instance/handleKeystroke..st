events-default handling
handleKeystroke: evt
	morph handleKeystroke: evt.

	self handlerAt: #keyStroke ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph }.
		evt wasHandled: true.
	].