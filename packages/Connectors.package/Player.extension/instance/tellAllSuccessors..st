*connectors-commands
tellAllSuccessors: aMessageSelector
	"Send the given message selector to all the objects within the receiver"

	self costume successors do:
		[:m |
			m playerRepresented ifNotNilDo:
				[:p | p performScriptIfCan: aMessageSelector]]