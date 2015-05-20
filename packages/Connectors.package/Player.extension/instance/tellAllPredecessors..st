*connectors-commands
tellAllPredecessors: aMessageSelector
	"Send the given message selector to all the objects within the receiver"

	self costume predecessors do:
		[:m |
			m playerRepresented ifNotNilDo:
				[:p | p performScriptIfCan: aMessageSelector]]