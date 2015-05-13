profiling
postProfilingCounts

	| bag |
	bag := Bag new.
	self callTreeModel 
		traverseCallTree: self callTreeModel rootNode 
		with: [:node | bag add: node clientClass -> node clientSelector.
			node profiles 
				at: #counts 
				put: '#', (bag occurrencesOf: node clientClass -> node clientSelector) asString].