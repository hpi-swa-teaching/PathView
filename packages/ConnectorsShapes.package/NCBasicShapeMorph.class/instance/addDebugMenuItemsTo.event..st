menus
addDebugMenuItemsTo: aCustomMenu event: evt

	Preferences cmdGesturesEnabled ifTrue: [ "build mode"
		aCustomMenu
			defaultTarget: self;
			add: 'inspect' translated action: #inspect;
			add: 'add mouse up action' translated action: #addMouseUpAction;
			add: 'remove mouse up action' translated action: #removeMouseUpAction.
		aCustomMenu addLine.
	].
