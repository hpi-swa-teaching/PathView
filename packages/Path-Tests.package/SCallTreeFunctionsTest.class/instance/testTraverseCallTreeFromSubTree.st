testing
testTraverseCallTreeFromSubTree

	| collection node |
	node := self getNode: 12.
	collection := OrderedCollection new.
	self callTree traverseCallTree: node with: [:each | collection add: each id].
	self assert: (13 to: 19) asOrderedCollection = collection.