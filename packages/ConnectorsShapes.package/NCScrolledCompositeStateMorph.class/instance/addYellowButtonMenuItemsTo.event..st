menus
addYellowButtonMenuItemsTo: aCustomMenu event: evt
	super addYellowButtonMenuItemsTo: aCustomMenu event: evt.
	aCustomMenu addLine.
	aCustomMenu addUpdating: #smoothingOnOrOffPhrase target: self action: #toggleSmoothing.
	aCustomMenu add: 'set scaling' translated selector: #chooseScale: argument: evt