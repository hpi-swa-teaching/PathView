event handling
saveChanges: aText
	(methodIndex = (methods size + 1))
		ifTrue: [ methods last methodClass classComment: aText ]
		ifFalse: [ (methods at: methodIndex) methodClass compile: aText ].
	ui methodEdit hasUnacceptedEdits: false