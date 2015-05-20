*connectors-embeddings
allConnectableMorphsDo: aBlock 
	"Evaluate the given block for all morphs in this composite morph
	whose immediate owner allows connection to submorphs.
	Also evaluate the block for the receiver."

	self allowsConnectionToSubmorphs
		ifTrue: [ submorphs do: [:m | m allConnectableMorphsDo: aBlock]].

	aBlock value: self.
