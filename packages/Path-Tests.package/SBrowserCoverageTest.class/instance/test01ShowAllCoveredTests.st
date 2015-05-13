testing
test01ShowAllCoveredTests
	self assert: self browser coverageList isEmpty.
	self browser setClass: Subject selector: #notify.
	self assert: self browser coverageList asArray = 
		{STestCaseEntryPoint class: TestDriver selector: #testRun}.