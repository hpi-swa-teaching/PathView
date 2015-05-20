event handling
addYellowButtonMenuItemsTo: aCustomMenu event: evt
	owner ifNotNil: [
		aCustomMenu
			add: 'move' translated target: evt hand selector: #attachMorph: argument: self;
			add: 'delete' translated target: self selector: #dismissMorph;
			add: 'resize' translated target: self selector: #resizeMorph: argument: evt;
			addLine.
	].
	aCustomMenu
		defaultTarget: self;
		add: 'properties...' translated target: self selector: #openAPropertySheet;
		add: 'add mouse up action' translated action: #addMouseUpAction;
		add: 'remove mouse up action' translated action: #removeMouseUpAction.
