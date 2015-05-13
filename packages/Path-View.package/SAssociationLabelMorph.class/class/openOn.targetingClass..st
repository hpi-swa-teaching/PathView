instance creation
openOn: aConnector targetingClass: aTargetClass
	
	| keyType containerType |
	keyType := containerType := nil.
	aTargetClass isBehavior ifFalse: [
		keyType := aTargetClass typeOfKeys.
		containerType := aTargetClass typeOfContainer ].
	^ (super openOn: aConnector)
		keyType: keyType;
		containerType: containerType;
		yourself