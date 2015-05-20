menus
addTextMenuItemsTo: aCustomMenu event: evt

	aCustomMenu addLine.
	aCustomMenu add: 'set all fonts to...' translated action: #promptForFont.
	self isAnyTextLocked
		ifTrue: [ aCustomMenu add: 'unlock all text' translated target: self selector: #lockText: argument: false ]
		ifFalse: [ aCustomMenu add: 'lock all text' translated target: self selector: #lockText: argument: true ].
	^aCustomMenu