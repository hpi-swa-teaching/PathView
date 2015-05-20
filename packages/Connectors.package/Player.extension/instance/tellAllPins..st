*connectors-embeddings
tellAllPins: aMessageSelector
	"Send the given message selector to all the objects within the receiver that want connections when embedded"

	self costume embeddedPinsDo:
		[:m |
			m playerRepresented ifNotNilDo:
				[:p | p performScriptIfCan: aMessageSelector]]