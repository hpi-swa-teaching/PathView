event handling
runMouseActionFor: aSymbol
	
	(self mouseActions at: aSymbol ifAbsent: [ nil ])
		ifNotNilDo: [ :action |
			action isSymbol
				ifTrue: [ self perform: action ]
				ifFalse: [ action value ] ].