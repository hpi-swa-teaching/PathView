menus
toggleSmoothing
	self transformMorph isSmoothingOn
		ifTrue: [ self transformMorph smoothingOff ]
		ifFalse: [ self transformMorph smoothingOn ]