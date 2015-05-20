event handling
keyStroke: anEvent
	| labels |
	labels := self labels.
	labels isEmpty ifTrue: [ (self addUnwrappedLabel: (String with: anEvent keyCharacter) at: anEvent position) openForEditingFrom: anEvent ]
		ifFalse: [ labels size = 1 ifTrue: [ labels anyOne appendKeyStroke: anEvent ]].