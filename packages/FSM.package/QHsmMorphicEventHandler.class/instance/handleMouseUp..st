events-default handling
handleMouseUp: evt
	morph handleMouseUp: evt.

	self handlerAt: #mouseUp ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph }.
		evt wasHandled: true ].