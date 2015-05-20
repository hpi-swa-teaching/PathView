menu
addYellowButtonMenuItemsTo: aCustomMenu event: evt
	super addYellowButtonMenuItemsTo: aCustomMenu event: evt.
	
	owner ifNotNil: [
	aCustomMenu
		add: 'move' target: evt hand selector: #attachMorph: argument: self;
		add: 'delete' target: self selector: #dismissMorph;
		add: 'resize' target: self selector: #resizeMorph: argument: evt;
		addLine
	].
	aCustomMenu
		add: 'properties...' target: self selector: #openAPropertySheet.
	(Smalltalk includesKey: #NCMakerButton) ifTrue: [
		aCustomMenu add: 'make button' action: #makeButton: ].
	aCustomMenu addLine.

	aCustomMenu
		defaultTarget: self;
		add: 'add mouse up action' action: #addMouseUpAction;
		add: 'remove mouse up action' action: #removeMouseUpAction.
	aCustomMenu addLine.
	
	self scalePoint ~= (1.0@1.0)
	ifTrue: [
		aCustomMenu
			add: 'restore size' target: self selector: #restoreSize.
	].
	
	owner ifNotNil: [ self addCustomMenuItems: aCustomMenu hand: evt hand ]
