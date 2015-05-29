debug graph layout
debugShowSubgraphs
	<preference: 'Show subgraphs for debugging-purposes'
		category: 'Path View'
		description: 'When auto-layouting a class-diagram, there will be multiple subgraphs involved. If this is enabled, each subgraph will be highlighted by another randomly colored box.'
		type: #Boolean>
	^ DebugShowSubgraphs ifNil: [ DebugShowSubgraphs := false ]