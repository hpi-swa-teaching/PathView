tree functions
getAllNodes
	| nodes |
	nodes := OrderedCollection new.
	self traverseCallTree: self rootNode with: [:each | nodes add: each].
	^ nodes
