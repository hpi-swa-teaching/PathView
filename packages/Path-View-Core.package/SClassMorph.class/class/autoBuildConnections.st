preferences
autoBuildConnections
	<preference: 'Build connections automatically'
		category: 'Path View'
		description: 'When a view is opened with one or more morphs or a morph is added to an open view, ask for whether the connections (inheritance and associations) with other classes should be opened. When the new morph is the first on the diagram, other class-morphs will be opened to connect to. If other morphs already are in the diagram, only the connections to these morphs will be opened (if there will be no connections, the query-dialog will be skipped completely).'
		type: #Boolean>
	^ AutoBuildConnections ifNil: [ AutoBuildConnections := true ]