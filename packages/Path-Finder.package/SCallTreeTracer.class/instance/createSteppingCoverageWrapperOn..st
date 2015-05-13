specific runs
createSteppingCoverageWrapperOn: aCallNode 
	^ SSteppingCoverageWrapper
		on: aCallNode clientSelector
		inClass: aCallNode clientClass
		waitingCalls: (self callTreeModel numberOfCallsBefore: aCallNode)
		node: aCallNode