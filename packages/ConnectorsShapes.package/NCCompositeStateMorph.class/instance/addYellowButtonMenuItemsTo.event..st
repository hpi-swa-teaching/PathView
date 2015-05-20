menus
addYellowButtonMenuItemsTo: aCustomMenu event: evt
	| swimLanes |
	swimLanes := (self stateRectangle submorphs size + 1) // 2.
	super addYellowButtonMenuItemsTo: aCustomMenu event: evt.
	aCustomMenu addLine.
	aCustomMenu add: 'add swim lane' translated target: self selector: #addSwimLane: argument: evt.
	swimLanes > 1 ifTrue: [
		aCustomMenu add: 'delete swim lane' translated target: self selector: #deleteSwimLane: argument: evt
	]