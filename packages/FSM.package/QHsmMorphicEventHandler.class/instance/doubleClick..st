state handler actions
doubleClick: evt
	self log: #action items: { #doubleClick. evt }.
	morph doubleClick: evt.
	
	self handlerAt: #doubleClick ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph}.
		evt wasHandled: true ].