helper
callTreeGetNodesFor: aClass method: aMethodSelector
	| nodes |
	nodes := OrderedCollection new.
	self tracer callTreeModel traverseCallTree: self rootNode 
			with: [:aNode | 
				(aNode clientClass == aClass and: [aNode clientSelector == aMethodSelector])
					ifTrue: [nodes add: aNode]].
	^ nodes