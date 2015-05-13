tree functions
traverseCallTree: aNode with: aBlock
	"Prefix Order"
	aNode nextCalls do: [:each | 
		aBlock value: each.
		self traverseCallTree: each with: aBlock].