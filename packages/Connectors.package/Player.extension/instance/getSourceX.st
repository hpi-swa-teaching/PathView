*connectors-slot getters/setters
getSourceX
	| source |
	source := (self getValueFromCostume: #firstVertex) ifNil: [ ^0 ].
	^source x