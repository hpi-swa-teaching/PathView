layout
applyLayout
	"Just until applying the layout, the subgraph has a distinct coordinate-system from its owner.
	The elements are translated back, just in case if the same graph is used again."
	
	graph offsetBy: position.
	debugHighlightColor
		ifNil: [
			graph applyLayout ]
		ifNotNil: [
			graph applyDebugLayout.
			self showDebugHighlight ].
	graph offsetBy: position negated.