testing
test02CoveredTestsForMethod
	"covered by one test"
	self assert: (self project coveredTestsFor: 
		(MethodReference class: SVisibleClock selector: #initInFrame:)) asArray = 		{(STestCaseEntryPoint class: TestDriver selector: #testRun).}.
	"covered by multiple tests"
	self assert: (self project coveredTestsFor: 
		(MethodReference class: TestDriver selector: #tearDown)) asArray = 
		{(STestCaseEntryPoint class: TestDriver selector: #testRun). 
		(STestCaseEntryPoint class: TestDriver selector: #testNoop).}.
	"Not covered"
	self assert: (self project coveredTestsFor: 
		(MethodReference class: Driver selector: #run)) asArray = {}.
	"Not in project"
	self assert: (self project coveredTestsFor: 
		(MethodReference class: SProjectTest selector: #tearDown)) asArray = {}.
