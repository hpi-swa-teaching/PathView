testing
testNumberOfNodesWithinCallTree

	| number |
	number := 0.
	self callTree 
		traverseCallTree: self callTree rootNode 
		with: [:aNode | number := number + 1].
	self assert: number = 22.