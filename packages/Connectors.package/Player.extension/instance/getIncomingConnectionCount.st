*connectors-slot getters/setters
getIncomingConnectionCount
	^(self getValueFromCostume: #incomingConnectionCount) ifNil: [ 0 ]