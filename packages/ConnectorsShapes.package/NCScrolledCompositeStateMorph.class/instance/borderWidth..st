accessing
borderWidth: aNumber
	super borderWidth: aNumber.
	scrollPane ifNotNil: [ scrollPane borderWidth: 0 ]