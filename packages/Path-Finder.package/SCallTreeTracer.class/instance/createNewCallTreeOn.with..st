callTree
createNewCallTreeOn: aTestCaseClass with: aMethodSelector

	self 
		resetCallTree;
		createRootNode: aTestCaseClass withTest: aMethodSelector.