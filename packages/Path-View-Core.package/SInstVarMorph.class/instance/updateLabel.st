layout and labels
updateLabel
	
	| variableType |
	super updateLabel.
	
	isTypeSet
		ifTrue: [variableType := type]
		ifFalse: [variableType := self getClassFromTypeHarvest].

	(variableType isNil or: [variableType isBehavior]) ifFalse: [ | vT |
		vT := variableType.
		variableType := vT typeOfContainer asString, '<'.
		vT typeOfKeys ifNotNilDo: [:t | variableType := variableType, t, ', '].
		variableType := variableType, vT typeOfElements, '>'].
	labelMorph contents: variableName, (variableType ifNil: [' : ?'] ifNotNil: [' : ', variableType]).