events-default handling
handleMouseOver: evt
	morph handleMouseOver: evt.

	self handlerAt: #mouseOver ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph }.
		evt wasHandled: true.
	].