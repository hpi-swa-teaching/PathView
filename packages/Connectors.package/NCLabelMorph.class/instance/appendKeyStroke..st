accessing
appendKeyStroke: anEvent
	| index |
	label ifNil: [^self ].
	anEvent hand newKeyboardFocus: label.
	index := label lastCharacterIndex.
	label selectFrom: index + 1 to: index.
	label keyStroke: anEvent.