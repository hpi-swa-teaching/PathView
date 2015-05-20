dispatching
gestureHandler
	^ActiveHand keyboardFocus == self
		ifTrue: [ self ]
		ifFalse: [ self rootInPasteUp ifNil: [ self ]].
