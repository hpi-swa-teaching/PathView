menus
addCustomMenuItems: aCustomMenu hand: aHandMorph
	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu addLine.
	self isAnyTextLocked
		ifTrue: [ aCustomMenu add: 'unlock text' translated target: self selector: #lockText: argument: false ]
		ifFalse: [ aCustomMenu add: 'lock text' translated target: self selector: #lockText: argument: true ]
	