pathMap-visualization
getHarvestedMethodReferencesFrom: aPathMap
	^ ((self bucketFrom: aPathMap) arguments keys, 
		(self bucketFrom: aPathMap) returns keys)
			asSet asOrderedCollection