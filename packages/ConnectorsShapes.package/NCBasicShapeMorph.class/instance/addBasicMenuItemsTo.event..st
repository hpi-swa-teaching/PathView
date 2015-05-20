menus
addBasicMenuItemsTo: aCustomMenu event: evt 
	aCustomMenu
		add: 'grab' translated
		target: evt hand
		selector: #attachMorph:
		argument: self.
	owner
		ifNotNil: [aCustomMenu
				add: 'delete' translated
				target: self
				selector: #dismissViaHalo;
				
				add: 'resize' translated
				target: self
				selector: #resizeMorph:
				argument: evt.
			aCustomMenu addLine.
			self addLayoutMenuItems: aCustomMenu hand: evt hand.
			self addToggleItemsToHaloMenu: aCustomMenu.
			aCustomMenu addLine].
	(Smalltalk includesKey: #NCMakerButton) ifTrue: [
		aCustomMenu add: 'make button' translated action: #makeButton: ].
	aCustomMenu		 addLine.
	aCustomMenu addUpdating: #antiAliasString action: #toggleAntialias.
	aCustomMenu
		add: 'properties...' translated
		target: self
		selector: #openAPropertySheet