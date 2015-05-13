accessing
getAdditionalInfoFromMapFor: aMethodRef
	^ (self pathMap 
		getMethodMorph: aMethodRef actualClass and: aMethodRef methodSymbol) additionalInfo