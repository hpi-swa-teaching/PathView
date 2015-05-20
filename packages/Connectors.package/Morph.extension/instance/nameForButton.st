*connectors-buttons
nameForButton
	^self valueOfProperty: #nameForButton ifAbsent: [ self externalName ]