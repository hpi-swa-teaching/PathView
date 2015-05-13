color propagation
getColorFromMapFor: aMethodRef
	^ (self pathMap 
		getMethodMorph: aMethodRef actualClass and: aMethodRef methodSymbol) color