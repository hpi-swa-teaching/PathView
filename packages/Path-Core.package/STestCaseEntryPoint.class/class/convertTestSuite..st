converting
convertTestSuite: aTestSuite

	^ aTestSuite tests collect: [ :each | 
		STestCaseEntryPoint class: each class selector: each selector ]