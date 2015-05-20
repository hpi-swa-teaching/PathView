*connectors-slot getters/setters
getDestinationX
	| destination |
	destination := (self getValueFromCostume: #lastVertex) ifNil: [ ^0 ].
	^destination x