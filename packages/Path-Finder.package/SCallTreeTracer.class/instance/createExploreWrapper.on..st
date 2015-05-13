specific runs
createExploreWrapper: aSymbol on: aCallNode 
	
	^ SExploreWrapper 
		on: aCallNode clientSelector
		inClass: aCallNode clientClass
		waitingCalls: aCallNode callsBefore
		exploreWhat: aSymbol