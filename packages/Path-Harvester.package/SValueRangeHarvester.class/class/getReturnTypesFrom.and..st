pathMap-visualization
getReturnTypesFrom: aMethodReference and: aPathMap
	| types properties |
	types := Set new.
	properties := (self bucketFrom: aPathMap) returns 
		at: aMethodReference 
		ifAbsent: [^ types].
	properties isCollection
		ifTrue: [properties do: [:property | types add: property class]]
		ifFalse: [types add: properties class].
	^ types