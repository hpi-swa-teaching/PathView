*connectors-slot getters/setters
setAllowsConnectionToEmbeddedPins: aBoolean
	(self costume respondsTo: #allowsConnectionToSubmorphs:)
		ifTrue: [ self costume allowsConnectionToSubmorphs: aBoolean ].
