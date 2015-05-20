*connectors-connections
allConnections
	"Answer a collection of my submorphs that are connectors"
	^submorphs select: [ :ea | ea isConnector ]