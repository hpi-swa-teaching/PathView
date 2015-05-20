*connectors-embeddings
wantsConnectionWhenEmbedded: aBoolean
	"Return true if I will accept connections even though I'm embedded in a non-pasteup morph"
	self setProperty: #wantsConnectionWhenEmbedded toValue: aBoolean
