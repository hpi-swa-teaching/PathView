layout
performLayout
	"Layout 'depth-first', so that higher-level layouts have the correct bounds/positions of nested sub-graphs."
	
	self elements notEmpty & isLayedOut not ifTrue: [
		self
			layoutNodes;
			layoutEdges.
		isLayedOut := true ].