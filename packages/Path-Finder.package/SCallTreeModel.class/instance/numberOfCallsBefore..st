tree functions
numberOfCallsBefore: aCallNode

	| numberOfCallsBefore |
	numberOfCallsBefore := 0.
	self traverseCallTree: self rootNode 
		with: [:aNode | 
			((aNode clientClass == aCallNode clientClass) and: 
			[aNode clientSelector == aCallNode clientSelector])
				ifTrue: [
					aNode id < aCallNode id 
						ifTrue: [numberOfCallsBefore := numberOfCallsBefore + 1]]]
		abort: [:aNode | aNode id > aCallNode id].
	^ numberOfCallsBefore