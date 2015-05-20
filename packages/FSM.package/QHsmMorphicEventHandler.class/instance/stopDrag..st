state handler actions
stopDrag: evt
	self log: #action items: { #stopDrag. evt }.
	
	morph stopDrag: evt.

	"This is an addition"
	self handlerAt: #stopDrag ifPresent: [ :h | 
		h valueWithEnoughArguments: {  evt. morph }.
		evt wasHandled: true ].