*connectors-slot getters/setters
getMidpointX
	| midpoint |
	midpoint := (self getValueFromCostume: #midpoint) ifNil: [ ^0 ].
	^midpoint x