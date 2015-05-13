profiling
postProfilingPercentage

	| fullDuration duration |
	fullDuration := self callTreeModel startingCallNodes 
					inject: 0 into: [:sum :each | sum := sum + (each profiles at: #%) asNanoSeconds].
					
	self callTreeModel 
		traverseCallTree: self callTreeModel rootNode 
		with: [:node | 
			(node profiles includesKey: #%) 
				ifTrue: [duration := (node profiles at: #%) asNanoSeconds.
					node profiles at: #% put: ((duration / fullDuration) * 100.0) rounded asString, '%']].