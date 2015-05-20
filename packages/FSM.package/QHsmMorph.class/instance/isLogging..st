logging
isLogging: type
	| types |
	types := self valueOfProperty: #loggingTypes ifAbsent: [ ^false ].
	^types includes: type