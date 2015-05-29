private
collectChildrenOf: aNode into: aSet
	
	aSet add: aNode.
	(self childrenOf: aNode) do: [ :child | self collectChildrenOf: child into: aSet ].