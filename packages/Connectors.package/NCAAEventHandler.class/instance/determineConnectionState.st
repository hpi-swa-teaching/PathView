state handlers
determineConnectionState
	| connections |
	connections := morph validConnections.
	^#(Disconnected OneEndConnected Connected) at: connections size + 1