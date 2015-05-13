specific runs
createDebugWrapperOn: aCallNode

	^ SDebugWrapper 
			on: aCallNode clientSelector 
			inClass: aCallNode clientClass 
			waitingCalls: (self callTreeModel numberOfCallsBefore: aCallNode)