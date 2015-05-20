*connectors-embeddings
wantsConnectionWhenEmbedded	
	"Return true if I will accept connections even though I'm embedded in a non-pasteup morph"
	^self valueOfProperty: #wantsConnectionWhenEmbedded ifAbsent: [ false ]
