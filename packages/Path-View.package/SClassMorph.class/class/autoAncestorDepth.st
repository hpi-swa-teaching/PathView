preferences
autoAncestorDepth
	<preference: 'Auto ancestor depth'
		category: 'Path View'
		description: 'When automatically adding superclass relationships to a class morph, this denotes the (maximum) number of levels up the inheritance chain we walk'
		type: #Number>
	^ AutoAncestorDepth ifNil: [ AutoAncestorDepth := 1 ]