*connectors-queries
connectionsAtAttachmentPointNumbered: anInteger
	"Answer a collection of all the connections to the given point (if any)"
	^self connectionsAtAttachmentPoint: (self allAttachmentPoints at: anInteger ifAbsent: [ ^#() ])