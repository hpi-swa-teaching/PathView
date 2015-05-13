display
showNextMethod
	ui methodEdit hasUnacceptedEdits ifTrue: [ui methodEdit promptForCancel].
	ui methodEdit hasUnacceptedEdits ifTrue: [ ^ self showNextMethodAborted ]. "chose not to discard"
	methodIndex := methodIndex + 1.
	(methodIndex = (methods size + 1) and: [methods notEmpty])
		ifTrue: [ ^ self showClassComment ].
	methodSelected := true.
	methodIndex > methods size
		ifFalse: [ (methods at: methodIndex) ifNotNil: [ :method | self showMethod: method ] ]
		ifTrue: [ methodIndex := methodIndex - 1 ]