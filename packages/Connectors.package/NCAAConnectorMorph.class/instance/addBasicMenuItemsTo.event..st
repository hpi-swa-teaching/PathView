menus
addBasicMenuItemsTo: aMenu event: evt 
	owner
		ifNotNil: [aMenu add: 'delete' translated action: #dismissViaHalo].
	aMenu addLine.
	owner
		ifNotNil: [aMenu add: 'add label' translated action: #addLabel:].
	(Smalltalk includesKey: #NCMakerButton) ifTrue: [
		aMenu add: 'make button' translated action: #makeButton: ].
	aMenu
		 	addLine.
	aMenu
		add: 'line color...' translated
		target: self
		selector: #changeLineColor:;
		
		add: 'line width...' translated
		target: self
		selector: #changeLineWidth:.
	line isBordered
		ifTrue: [aMenu
				add: 'line border color...' translated
				target: self
				selector: #changeBorderColor:;
				
				add: 'line border width...' translated
				target: self
				selector: #changeBorderWidth:].
	line addFillStyleMenuItems: aMenu hand: evt hand.
	aMenu addLine.
	aMenu
		addUpdating: #handlesShowingPhrase
		target: self
		action: #showOrHideHandles;
		
		addUpdating: #orthogonalityPhrase
		target: self
		action: #toggleOrthogonality;
		 addUpdating: #makeSegmentedOrSmoothLinePhrase action: #toggleSmoothing.
	aMenu
		addWithLabel: 'straighten' translated
		enablement: [self vertices size > 2]
		action: #straighten