initialization
initialize
	aesthetics := OrderedCollection new.
	self clearNodesAndConnections.
	self maxIterations: 2500.
	iterations := 0.
	self scale: 100.0