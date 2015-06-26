layout and labels
updateLabel
	
	| variableType |
	super updateLabel.

	self isTypeSet
		ifTrue: [variableType := self variableType]
		ifFalse: [variableType := self getClassFromTypeHarvest].

	(variableType isNil or: [variableType isBehavior]) ifFalse: [ | vT |
		vT := variableType.
		variableType := vT typeOfContainer asString, '<'.
		vT typeOfKeys ifNotNilDo: [:t | variableType := variableType, t, ', '].
		variableType := variableType, vT typeOfElements, '>'].
	labelMorph contents: self variableName, (variableType ifNil: [' : ?'] ifNotNil: [' : ', variableType])