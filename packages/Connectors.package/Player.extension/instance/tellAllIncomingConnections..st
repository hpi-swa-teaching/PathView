*connectors-commands
tellAllIncomingConnections: aMessageSelector
	"Send the given message selector to all the players of the receiver's costume's incoming connections"

	self costume incomingConnections do:
		[:m |
			m playerRepresented ifNotNilDo:
				[:p | p performScriptIfCan: aMessageSelector]]