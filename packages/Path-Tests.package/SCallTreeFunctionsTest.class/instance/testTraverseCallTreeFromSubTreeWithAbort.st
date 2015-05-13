testing
testTraverseCallTreeFromSubTreeWithAbort

	| collection node |
	node := self getNode: 12.
	collection := OrderedCollection new.
	self callTree 
		traverseCallTree: node 
		with: [:each | collection add: each id] abort: [:each | each id > 15].
	self assert: (13 to: 18) asOrderedCollection = collection.