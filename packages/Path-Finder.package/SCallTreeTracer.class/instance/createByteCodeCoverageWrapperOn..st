specific runs
createByteCodeCoverageWrapperOn: aCallNode 
	^ SByteCodeCoverageWrapper
		on: aCallNode clientSelector
		inClass: aCallNode clientClass
		waitingCalls: (self callTreeModel numberOfCallsBefore: aCallNode)