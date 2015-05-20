menus
addCustomMenuItems: aCustomMenu hand: aHandMorph
	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	self transformMorph isSmoothingOn
		ifFalse: [aCustomMenu add: 'turn on smoothing' translated action: #smoothingOn]
		ifTrue: [aCustomMenu add: 'turn off smoothing' translated action: #smoothingOff]