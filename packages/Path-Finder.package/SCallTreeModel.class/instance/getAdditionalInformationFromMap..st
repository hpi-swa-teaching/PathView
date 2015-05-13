spec commands
getAdditionalInformationFromMap: aCallNode
	^ self pathFinder coverageTracer 
			ifNotNil: [:tracer | 
				tracer getAdditionalInfoFromMapFor: (MethodReference 
												class: aCallNode clientClass 
												selector: aCallNode clientSelector)].