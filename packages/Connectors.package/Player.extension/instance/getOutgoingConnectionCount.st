*connectors-slot getters/setters
getOutgoingConnectionCount
	^(self getValueFromCostume: #outgoingConnectionCount) ifNil: [ 0 ]