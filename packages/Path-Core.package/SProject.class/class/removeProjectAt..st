projects
removeProjectAt: aSymbol

	CurrentProject == (self projectAt: aSymbol)
		ifTrue: [CurrentProject := self projectAt: #null].
	^ self projectRegistry
		removeKey: aSymbol