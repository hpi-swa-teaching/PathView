accessing
addTextMenuItemsTo: aCustomMenu event: evt

	aCustomMenu addLine.
	aCustomMenu add: 'choose font...' translated action: #promptForFont.

	^aCustomMenu