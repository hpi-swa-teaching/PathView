accessing
container: aClass elements: elementType keys: keyType
	| container |
	container := SContainerType new.
	container 
		typeOfContainer: aClass;
		typeOfElements: elementType;	
		typeOfKeys: keyType.
	^ container