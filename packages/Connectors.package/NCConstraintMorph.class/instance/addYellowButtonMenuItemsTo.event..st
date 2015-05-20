menus
addYellowButtonMenuItemsTo: aMenu event: evt
	| event |
	event := (evt isKindOf: UserInputEvent) ifTrue: [ evt ] ifFalse: [ ActiveEvent ].
	
	aMenu 
		defaultTarget: self;
		addStayUpItem;
		add: 'resize' translated target: self selector: #resizeMorph: argument: event;
		add: 'attach to...' translated target: self selector: #attachToSelectedMorph:;
		add: 'properties...' translated target: self selector: #openAPropertySheet;
		add: 'display attachments' translated target: self selector: #displayInputs.

	false ifTrue: [
		aMenu
			addLine;
			add: 'add arbitrary shape...' translated target: self selector: #addSelectedMorph:.
		self class preMadeShapeNames isEmpty
			ifFalse: [ aMenu add: 'add pre-made shape...' translated subMenu: self selectShapeMenu ].
		aMenu
			addWithLabel: 'delete shape...' translated enablement: #hasSubmorphs action: #deleteSelectedMorph:.
	].

	aMenu addLine.

	self connectionsInMenu
	do: [ :sel |
		aMenu addUpdating: #connectionWordingFor: target: self selector: #choosePreferredConnection: argumentList: { sel }.
	].

	self dieWithInput ifFalse: [
		aMenu addUpdating: #connectionWordingFor: target: self selector: #choosePreferredConnection: argumentList: #( connectToNothing ).
	].
