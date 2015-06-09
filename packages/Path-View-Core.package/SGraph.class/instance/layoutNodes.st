layout
layoutNodes
	"Layout 'depth-first', so that higher-level layouts have the correct bounds/positions of nested sub-graphs."
	
	self nodes ifNotEmpty: [
		self nodes do: #layoutNodes. "This is mainly to propagate layouting into subgraphs, which are encapsulated in SSubgraphNodes."
		self doPerformLayout ].