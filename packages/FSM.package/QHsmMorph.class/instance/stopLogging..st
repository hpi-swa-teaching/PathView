logging
stopLogging: type
	| types |
	types := self valueOfProperty: #loggingTypes ifAbsent: [ ^self ].
	types remove: type ifAbsent: []