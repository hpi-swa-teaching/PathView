labeling
addLabel: anEvent
	| label |
	label := self labelClass new string: '  ' wrap: false minWidth: 20.
	label
		align: label center with: anEvent position;
		attachUnobnoxiouslyTo: self at: anEvent position;
		dieWithInput: true;
		acceptOnCR: true;
		acceptOnFocusLoss: true;
		selectAll.
	self pasteUpMorphOrWorld addMorph: label.
	anEvent hand newKeyboardFocus: label label.
	^label