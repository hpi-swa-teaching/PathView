events-default handling
handleMouseEnter: evt
	morph handleMouseEnter: evt.

	self handlerAt: #mouseEnter ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph }.
		evt wasHandled: true.
	].