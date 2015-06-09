debug
debugHighlight
	
	| subgraphColor |
	subgraphColor := Color random alpha: 0.2.
	self nodes do: [ :node |
		node debugHighlight: subgraphColor ].