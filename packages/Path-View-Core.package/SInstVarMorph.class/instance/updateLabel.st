layout and labels
updateLabel
	
	| variableType |
	super updateLabel.

	variableType := self getClass.

	(variableType isNil or: [variableType isBehavior]) ifFalse: [ | vT |
		vT := variableType.
		variableType := vT typeOfContainer asString, '<'.
		vT typeOfKeys ifNotNilDo: [:t | variableType := variableType, t, ', '].
		variableType := variableType, vT typeOfElements, '>'].
	self labelMorph contents: self variableName, (variableType ifNil: [' : ?'] ifNotNil: [' : ', variableType])