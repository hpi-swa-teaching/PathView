method tests
test03bAllTestsAsEntryPoints
	
	self assert: (self project allTestsAsEntryPoints = (self allTestsOfObserverExample collect: [:each | STestCaseEntryPoint onTestMethodReference: each]))