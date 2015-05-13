methods
allTestsAsEntryPoints
	^ self allTests collect: [:each | STestCaseEntryPoint onTestMethodReference: each]