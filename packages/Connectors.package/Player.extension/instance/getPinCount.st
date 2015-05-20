*connectors-slot getters/setters
getPinCount
	^(self getValueFromCostume: #pinCount) ifNil: [ 0 ]