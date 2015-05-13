class tests
test04TestClassesOfCategory

	self assert: (self project 
		testClassesOfCategory: #'Path-Dev-Example-Observer-Tests') =  {TestDriver}.
	self assert: (self project 
		testClassesOfCategory: #'Path-Dev-Example-Observer') isEmpty.