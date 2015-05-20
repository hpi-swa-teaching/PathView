*connectors-connection
disconnectAllMyConstraints
	self connectedConstraints do: [ :ea | ea inputs: (ea inputs copyWithout: self) ]