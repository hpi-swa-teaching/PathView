display
markNextErrorInMethod
	| selectionStart |
	errorIndex <= errors size
		ifTrue: [ self markNextError ]
		ifFalse: [ 
			selectionStart := ui methodEdit selectionInterval first.
			ui methodEdit setSelection: (selectionStart to: selectionStart - 1) ]