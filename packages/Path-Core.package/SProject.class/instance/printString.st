printing
printString

	^ self == SProject current
		ifTrue: [self projectName, ' <current>']
		ifFalse: [self projectName]