initialization
addNode: aNode 
	self nodes: (self nodes copyWith: aNode).
	self forces: (self forces copyWith: 0.0 @ 0.0)