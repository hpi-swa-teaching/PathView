*connectors-slot getters/setters
getWantsConnectionWhenEmbedded
	^(self getValueFromCostume: #wantsConnectionWhenEmbedded) ifNil: [ false ]