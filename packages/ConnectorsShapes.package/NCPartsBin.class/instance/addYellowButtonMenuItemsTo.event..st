menu & halo
addYellowButtonMenuItemsTo: aMenu event: evt
	super addYellowButtonMenuItemsTo: aMenu event: evt.
	aMenu
		add: 'properties...' translated target: self selector: #openAPropertySheet;
		add: 'add button' translated target: self selector: #addButtonAndInformAt: argument: evt.
