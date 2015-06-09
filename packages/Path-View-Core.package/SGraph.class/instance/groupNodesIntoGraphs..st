converting
groupNodesIntoGraphs: graphCreationBlock
	"Create groups from contained nodes, where there are no connections between nodes from different groups.
	For each group, evaluate graphCreationBlock (without parameters) to create an empty Graph object.
	Group nodes, that would build up a group with a single node, are put into one group of 'nonconnectec' nodes."
	
	| groups |
	groups := self nodeGroups.
	(groups select: [ :group | group size > 1 ])
		do: [ :group |
			self groupNodes: group toSubgraph: graphCreationBlock value ].
	self
		groupNodes: (groups select: [ :group | group size = 1 ]) flatten
		toSubgraph: graphCreationBlock value.