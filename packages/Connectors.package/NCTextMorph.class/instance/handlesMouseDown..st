event handling
handlesMouseDown: evt
	self trackFocusFromEvent: evt.
	self isPartsDonor ifTrue: [^ false].
	self eventHandler ifNotNil: [^ self eventHandler handlesMouseDown: evt].
	^evt redButtonPressed or: [ self allowsGestureStart: evt].
