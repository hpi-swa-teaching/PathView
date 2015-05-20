state handler actions
handleUnhandledEvent: anEvent
	"anEvent was not handled by the current state or any of its superstates.
	Remember that I didn't handle the event."
	handled := false.
	event isMorphicEvent ifTrue: [
		event wasHandled ifFalse: [ event sentTo: self ]].
	^nil