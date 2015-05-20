editing
keyboardFocusChange: aBoolean
	aBoolean
		ifTrue: [ ActiveHand addMouseListener: self ]
		ifFalse: [ ActiveHand removeMouseListener: self ].

	^super keyboardFocusChange: aBoolean.
