testing
test02aStartNewBrowserFromCoveredTest
	| newBrowser |
	[newBrowser := self browser 
		setClass: Subject selector: #notify;
		testMode: #openBrowserOn:;
		coverageListIndex: 1.
	self assert: newBrowser currentSelectedMethod = 
		(MethodReference class: TestDriver selector: #testRun)]
			ensure: [newBrowser ifNotNil: [newBrowser dependents first abandon]].