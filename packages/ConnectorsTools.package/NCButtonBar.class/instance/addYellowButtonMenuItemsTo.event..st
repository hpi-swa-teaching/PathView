menus
addYellowButtonMenuItemsTo: aMenu event: evt
	super addYellowButtonMenuItemsTo: aMenu event: evt.

	aMenu
		add: 'move' translated target: evt hand selector: #attachMorph: argument: self;
		add: 'delete' translated target: self selector: #dismissMorph;
		add: 'resize' translated target: self selector: #resizeMorph: argument: evt;
		add: 'collapse' translated target: self selector: #collapse.
	aMenu addLine.
	aMenu
		add: 'properties...' translated target: self selector: #openAPropertySheet;
		addUpdating: #stickinessString target: self action: #toggleStickiness.
	aMenu addLine.
	self label
		ifNil: [ aMenu add: 'add bar label' translated target: self selector: #addLabel ]
		ifNotNil: [
			aMenu add: 'change bar label text' translated target: self selector: #changeLabel.
			aMenu add: 'set bar label font' translated target: self selector: #promptForFont.
			aMenu add: 'remove bar label' translated target: self selector: #removeLabel ].

	aMenu addLine;
		add: 'add button' translated target: self selector: #addButtonAndInformAt: argument: evt.

	self areButtonsLabeled
		ifFalse: [ aMenu add: 'turn on button labels' translated target: self selector: #enableButtonLabels: argument: true ]
		ifTrue: [ aMenu add: 'turn off button labels' translated target: self selector: #enableButtonLabels: argument: false ].
