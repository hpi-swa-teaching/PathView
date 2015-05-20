*connectors-slot getters/setters
getAllowsConnectionToEmbeddedPins
	^(self getValueFromCostume: #allowsConnectionToSubmorphs) ifNil: [ true ]