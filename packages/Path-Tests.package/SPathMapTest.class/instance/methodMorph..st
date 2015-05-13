pathMap-helper
methodMorph: aMethodReference
	| methodMorph |
	methodMorph := self pathMap 
						getMethodMorph: aMethodReference actualClass 
						and: aMethodReference methodSymbol.
	self assert: methodMorph notNil.
	^ methodMorph