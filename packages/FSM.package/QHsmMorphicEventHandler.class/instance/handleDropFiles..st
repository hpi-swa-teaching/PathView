events-default handling
handleDropFiles: evt
	morph handleDropFiles: evt.

	self handlerAt: #dropFiles ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph }.
		evt wasHandled: true.
	].