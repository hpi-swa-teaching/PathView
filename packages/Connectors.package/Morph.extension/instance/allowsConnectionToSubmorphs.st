*connectors-embeddings
allowsConnectionToSubmorphs
	"Answer true if I will allow a connector to connect to any of my submorphs.
	If not, the search for attachment points in embedded morphs will not be made."

	self wantsConnectionWhenEmbedded ifTrue: [ ^false ].

	^self valueOfProperty: #allowsConnectionToSubmorphs ifAbsent: [ true ]