*connectors-connection
disconnectAllConstraints
	self allConnectedMorphsDo: [ :m | m disconnectAllMyConstraints ].