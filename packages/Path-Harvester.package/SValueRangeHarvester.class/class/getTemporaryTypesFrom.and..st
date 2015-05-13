pathMap-visualization
getTemporaryTypesFrom: aMethodReference and: aPathMap
	| types temporaries |
	types := Set new.
	temporaries := (self bucketFrom: aPathMap) arguments 
		at: aMethodReference 
		ifAbsent: [^ types].
	temporaries do: [:each | 
		each isCollection
			ifTrue: [each do: [:property | types add: property class]]
			ifFalse: [types add: each class]].
	^ types