*connectors-slot getters/setters
getTotalLength
	^(self getValueFromCostume: #totalLength) ifNil: [ 0 ]