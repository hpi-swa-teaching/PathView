actions
highlightInPathMapIfPossible
	SPMPathMap allInstances do: [:each |
		[(each 
			getMethodMorph: self callNode clientClass 
			and: self callNode clientSelector) highlight] on: Error do: []].