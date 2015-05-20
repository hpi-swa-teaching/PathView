*connectors-embeddings
tellAllEmbeddedObjects: aMessageSelector
	"Send the given message selector to all the players in my costume's embedded morphs.
	This is a deep version of tellAllContents:"

	self costume embeddedPlayersDo:
		[:p | p performScriptIfCan: aMessageSelector]