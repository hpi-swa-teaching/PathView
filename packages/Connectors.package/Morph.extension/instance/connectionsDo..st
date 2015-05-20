*connectors-queries
connectionsDo: aBlock
	"Evaluate aBlock with all the NCConnectorMorphs that are connected to me directly or to any of my submorphs."
	self allConnectableMorphsDo: [ :m | m myConnectionsDo: aBlock ]