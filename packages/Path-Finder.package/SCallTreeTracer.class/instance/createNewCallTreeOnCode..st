callTree
createNewCallTreeOnCode: aSourceCodeString

	self 
		resetCallTree;
		createCodeRootNode: aSourceCodeString.