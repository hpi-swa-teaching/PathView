accessing
isTextForcedLocked
	^self valueOfProperty: #forceTextLocked ifAbsent: [ false ].