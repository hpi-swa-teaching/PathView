converting
groupNodesIntoInheritanceTrees
	"Group nodes into trees, based on the inheritance-connections between the nodes. The original nodes will be removed from the node-set, replaced by tree-subgraphs."
	
	| classNodes inheritanceRoots subgraphs |
	classNodes := self nodes select: #containsClass.
	inheritanceRoots := Set new.
	classNodes do: [ :node | inheritanceRoots add: (node highestSuperclassNodeIn: classNodes) ].
	subgraphs := OrderedCollection new.
	inheritanceRoots
		do: [ :rootNode | | subgraph |
			subgraph := STreeOrientedGraph inheritanceTreeWithRoot: rootNode.
			self groupNodes: subgraph inheritanceTreeNodes toSubgraph: subgraph ].