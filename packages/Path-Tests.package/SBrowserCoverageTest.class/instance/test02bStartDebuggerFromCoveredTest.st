testing
test02bStartDebuggerFromCoveredTest
	self should: [self browser 
		setClass: Subject selector: #notify;
		testMode: #openDebuggerOn:;
		coverageListIndex: 1] raise: BreakPoint.