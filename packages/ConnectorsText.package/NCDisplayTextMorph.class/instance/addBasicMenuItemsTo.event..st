event handling
addBasicMenuItemsTo: aCustomMenu event: evt 
	aCustomMenu add: 'grab' target: evt hand selector: #attachMorph: argument: self.
	owner ifNotNil: [
		aCustomMenu add: 'delete' target: self selector: #dismissViaHalo;
		add: 'resize' target: self selector: #resizeMorph: argument: evt;
		addLine.
		self addLayoutMenuItems: aCustomMenu hand: evt hand.
		aCustomMenu addLine.
		self addToggleItemsToHaloMenu: aCustomMenu.
		aCustomMenu addLine].

	(Smalltalk includesKey: #NCMakerButton) ifTrue: [
		aCustomMenu add: 'make button' action: #makeButton: ].
	aCustomMenu		 addLine.
	aCustomMenu
		add: 'properties...'
		target: self
		selector: #openAPropertySheet