*connectors-embeddings
allConnectedMorphsDo: aBlock
	"Evaluate the given block for all morphs in this composite morph (including the receiver)
	that have connected constraints."

	self allConnectableMorphsDo: [ :m |
		m hasConnectedConstraints ifTrue: [ aBlock value: m ]]
