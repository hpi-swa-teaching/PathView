testing
testTraverseCallTreeFromRoot

	| collection |
	collection := OrderedCollection new.
	self callTree traverseCallTree: self rootNode with: [:each | collection add: each id].
	self assert: (1 to: 22) asOrderedCollection = collection.