public API
resetCallTree

	self currentId: -1.
	self callTreeModel 
		reset; 
		refresh.