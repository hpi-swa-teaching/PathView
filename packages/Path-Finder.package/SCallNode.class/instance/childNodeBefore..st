callgraph
childNodeBefore: aChildNode 
	| index |
	index := self nextCalls indexOf: aChildNode.
	index > 1
		ifFalse: [^ nil].
	^ self nextCalls at: index - 1 ifAbsent: nil