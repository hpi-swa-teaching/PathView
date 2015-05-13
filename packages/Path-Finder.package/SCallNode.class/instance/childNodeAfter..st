callgraph
childNodeAfter: aChildNode 
	| index |
	index := self nextCalls indexOf: aChildNode.
	index > 0
		ifFalse: [^ nil].
	^ self nextCalls at: index + 1 ifAbsent: nil