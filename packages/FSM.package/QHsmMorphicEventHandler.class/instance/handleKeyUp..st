events-default handling
handleKeyUp: evt
	morph handleKeyUp: evt.

	self handlerAt: #keyUp ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph }.
		evt wasHandled: true.
	].