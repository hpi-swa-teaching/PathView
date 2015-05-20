dropping/grabbing
aboutToBeGrabbedBy: aHand 
	| oldFocus |
	"label isLocked
		ifFalse: [oldFocus := aHand keyboardFocus.
			(oldFocus respondsTo: #passKeyboardFocusTo:)
				ifTrue: [oldFocus passKeyboardFocusTo: label]
				ifFalse: [aHand newKeyboardFocus: self label]]."
	^ super aboutToBeGrabbedBy: aHand