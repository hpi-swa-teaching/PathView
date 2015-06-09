selection
initializeAt: position
	
	self verticesAt: 1 put: position.
	self verticesAt: 2 put: position + (1@0).
	self verticesAt: 3 put: position + (0@1).
	self verticesAt: 4 put: position + (1@1).