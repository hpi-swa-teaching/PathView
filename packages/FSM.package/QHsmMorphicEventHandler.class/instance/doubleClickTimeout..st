state handler actions
doubleClickTimeout: evt
	self log: #action items: { #doubleClickTimeout. evt }.
	morph doubleClickTimeout: evt.

	self handlerAt: #doubleClickTimeout ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph}.
		evt wasHandled: true ].