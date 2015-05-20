*connectors-commands
tellAllContents: aMessageSelector
	"Send the given message selector to all the objects within the receiver"

	self submorphs do:
		[:m |
			m playerRepresented ifNotNilDo:
				[:p | p performScriptIfCan: aMessageSelector]]