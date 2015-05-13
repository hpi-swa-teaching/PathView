spec commands
getColorFromMap: aCallNode
	self pathFinder ifNil: [^ nil].
	^ self pathFinder coverageTracer 
			ifNotNil: [:tracer | 
				tracer getColorFromMapFor: (MethodReference 
												class: aCallNode clientClass 
												selector: aCallNode clientSelector)].