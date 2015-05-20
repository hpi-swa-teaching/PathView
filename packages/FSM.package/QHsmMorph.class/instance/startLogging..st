logging
startLogging: type
	| types |
	types := self valueOfProperty: #loggingTypes ifAbsentPut: [ Set new ].
	types add: type