drawing
colorForRow: row
	| itemColor |
	itemColor := listSource itemColorAt: row.
	itemColor == false
		ifFalse: [^ itemColor].	
	^(selectedRow notNil and: [ row = selectedRow])
		ifTrue: [ self class listSelectionTextColor ]
		ifFalse: [ self color ].
		