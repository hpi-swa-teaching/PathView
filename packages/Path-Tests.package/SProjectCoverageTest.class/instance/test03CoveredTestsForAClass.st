testing
test03CoveredTestsForAClass
	"covered by one test"
	self assert: (self project coveredTestsForClass: Observer) asArray = 		{(STestCaseEntryPoint class: TestDriver selector: #testRun).}.
	"Not covered"
	self assert: (self project coveredTestsForClass: Driver) asArray = {}.
	"Not in project"
	self assert: (self project coveredTestsForClass: SProjectTest) asArray = {}.