multi-window support
restoreFrom: aString

	self
		removeAllMorphs;
		addAllMorphs: (((savedStates at: aString) last) reject: #isNil).
	currentState := aString.
	self savedName: (aString copyUpToLast: $#).
	self dirty: false