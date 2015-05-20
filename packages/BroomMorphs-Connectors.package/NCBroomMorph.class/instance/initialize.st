initialization
initialize
	super initialize.
	self filter: [ :m | m isConnector not and: [ m isConstraint not ] ].