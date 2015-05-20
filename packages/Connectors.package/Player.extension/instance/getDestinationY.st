*connectors-slot getters/setters
getDestinationY
	| destination |
	destination := (self getValueFromCostume: #lastVertex) ifNil: [ ^0 ].
	^destination y