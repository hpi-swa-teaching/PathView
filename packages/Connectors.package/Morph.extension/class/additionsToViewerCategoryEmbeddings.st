*connectors-scripting
additionsToViewerCategoryEmbeddings
	"Answer viewer additions for the 'embeddings' category"
	"Vocabulary initialize"

	^#(
		embeddings 
		(
			(slot containingObject 'Me or my outermost container' Player readOnly Player getRootOwner unused unused)
			(slot pinCount 'A count of my embedded objects that want to act as pins for connections' Number readOnly Player getPinCount unused unused)
			(slot wantsConnectionWhenEmbedded 'Whether I should be act as a pin for connections when embedded in another object' Boolean readWrite Player getWantsConnectionWhenEmbedded Player setWantsConnectionWhenEmbedded:)
			(slot allowsConnectionToEmbeddedPins 'Whether objects embedded in me may be used as connection pins' Boolean readWrite Player getAllowsConnectionToEmbeddedPins Player setAllowsConnectionToEmbeddedPins:)
			(command tellAllPins: 'Send a message to all of my embedded objects that want to act as pins for connections' ScriptName)
			(command tellAllEmbeddedObjects: 'Send a message to all of my embedded objects' ScriptName)
		)
	)

