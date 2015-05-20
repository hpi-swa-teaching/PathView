event handling
wantsKeyboardFocusFor: aSubmorph
	label isLocked ifTrue: [ ^false ].
	aSubmorph wouldAcceptKeyboardFocus ifTrue: [^ true].
	^ super wantsKeyboardFocusFor: aSubmorph