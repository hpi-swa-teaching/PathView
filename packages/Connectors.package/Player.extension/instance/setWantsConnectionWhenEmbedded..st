*connectors-slot getters/setters
setWantsConnectionWhenEmbedded: aBoolean
	(self costume respondsTo: #wantsConnectionWhenEmbedded:)
		ifTrue: [ self costume wantsConnectionWhenEmbedded: aBoolean ].
