tree functions
traverseCallTree: aNode with: aBlock abort: anotherBlock
	"Prefix Order"
	aNode nextCalls do: [:each | 
		aBlock value: each.
		(anotherBlock value: each) 
			ifFalse: [self traverseCallTree: each with: aBlock abort: anotherBlock]].