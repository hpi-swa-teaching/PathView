user class selection
createKeyValueContainer

	SContainerType new
		typeOfContainer: self variableType;
		typeOfKeys: ((self userSelectedContainerClass: 'key-type') ifNil: [ ^ nil ]);
		typeOfElements: ((self userSelectedContainerClass: 'value-type') ifNil: [ ^ nil ])