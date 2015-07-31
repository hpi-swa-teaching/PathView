user class selection
askForAndGetClass
	
	| selectedType |
	selectedType := self userSelectedContainerClass: 'type'.
	selectedType ifNotNilDo: [ :type | self setTypeAndUpdateLabel: type ].
	^ selectedType 