*connectors-embeddings
allConnectedSubmorphsDo: aBlock
	"Evaluate the given block for all morphs in this composite morph (excluding the receiver)
	whose immediate owner allows connection to submorphs."

	self allConnectableMorphsDo: [ :m |
		(m ~~ self and: [ m hasConnectedConstraints ]) ifTrue: [
			aBlock value: m ]]
