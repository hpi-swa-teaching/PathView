user class selection
createKeyValueContainer: aClass

	^ SContainerType new
		typeOfContainer: aClass;
		typeOfKeys: ((self userSelectedContainerClass: 'key-type') ifNil: [ ^ nil ]);
		typeOfElements: ((self userSelectedContainerClass: 'value-type') ifNil: [ ^ nil ])