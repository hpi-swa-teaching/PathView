pathMap-helper
getMorph: aMethodReference with: aColor from: aPathMap
	| morph |
	morph := aPathMap 
				getMethodMorph: aMethodReference actualClass
				and: aMethodReference methodSymbol.
	morph propagateColor: aColor.	
	^ morph