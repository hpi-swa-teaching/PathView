testing
testTraverseCallTreeFromRootWithAbort

	| collection |
	collection := OrderedCollection new.
	self callTree 
		traverseCallTree: self rootNode 
		with: [:each | collection add: each id] abort: [:each | each id > 10].
	self assert: #(1 2 3 4 5 6 7 8 9 10 11 12 20) asOrderedCollection = collection.