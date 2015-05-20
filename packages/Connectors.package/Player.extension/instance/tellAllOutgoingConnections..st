*connectors-commands
tellAllOutgoingConnections: aMessageSelector
	"Send the given message selector to all the players of the receiver's costume's outgoing connections"

	self costume outgoingConnections do:
		[:m |
			m playerRepresented ifNotNilDo:
				[:p | p performScriptIfCan: aMessageSelector]]