profiling
postProfilingMilliSeconds

	| duration |
	self callTreeModel 
		traverseCallTree: self callTreeModel rootNode 
		with: [:node | 
			duration := node profiles at: #ms.
			node profiles at: #ms put: duration asMilliSeconds asString, 'ms'].