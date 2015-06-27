user class selection
createKeyValueContainer

	SContainerType new
		typeOfContainer: type;
		typeOfKeys: ((self userSelectedContainerClass: 'key-type') ifNil: [ ^ nil ]);
		typeOfElements: ((self userSelectedContainerClass: 'value-type') ifNil: [ ^ nil ])