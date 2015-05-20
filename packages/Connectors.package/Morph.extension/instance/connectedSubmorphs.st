*connectors-embeddings
connectedSubmorphs
	"Answer a collection of all of my submorphs that have connected constraints."

	^Array streamContents: [ :s | self allConnectedSubmorphsDo: [ :m | s nextPut: m ]]
