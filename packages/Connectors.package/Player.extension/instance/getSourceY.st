*connectors-slot getters/setters
getSourceY
	| source |
	source := (self getValueFromCostume: #firstVertex) ifNil: [ ^0 ].
	^source y