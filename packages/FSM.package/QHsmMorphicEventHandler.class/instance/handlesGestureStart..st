testing-TODO
handlesGestureStart: evt
	"Does the associated morph want to handle gestures?"
	evt hand isGenieEnabled ifFalse: [ ^false ].

	self gestureRecipient ifNotNilDo:  [ :gestureRecipient |
		^(gestureRecipient gestureDictionaryStartEvent: evt) notNil ].
	^ (self gestureDictionaryStartEvent: event) notNil