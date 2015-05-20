*connectors-embeddings
attachmentPointForEmbeddedMorph: aMorph
	^(aMorph transformFrom: self) localPointToGlobal: aMorph attachmentPointWhenEmbedded
