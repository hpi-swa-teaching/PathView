accessing
isConnectionInside: collectionOfNodes
	"Answer, whether the receiver is a connection between two nodes in collectionOfNodes."
	
	^ collectionOfNodes includesAllOf: { fromNode. toNode }