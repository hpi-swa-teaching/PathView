state handler actions
click: evt
	self log: #action items: { #click. evt }.

	morph click: evt.

	self handlerAt: #click ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph}.
		evt wasHandled: true ].