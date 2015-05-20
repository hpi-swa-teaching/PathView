events-default handling
handleMouseMove: evt
	morph handleMouseMove: evt.

	self handlerAt: #mouseMove ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph }.
		evt wasHandled: true.
	].