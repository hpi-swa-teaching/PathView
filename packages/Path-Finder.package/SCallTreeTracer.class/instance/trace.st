tracing
trace
	| result wrappers runWithContracts |
	wrappers := self createWrappers.
	runWithContracts := self askForContracts.
	self startTracing.
	result := runWithContracts
		ifTrue: [self runRootNodeWithContracts]
		ifFalse: [self runRootNode].
	self 
		stopTracing;
		removeWrappers: wrappers;
		profilingPostProcessing.
	self callTreeModel refresh.
	^ result