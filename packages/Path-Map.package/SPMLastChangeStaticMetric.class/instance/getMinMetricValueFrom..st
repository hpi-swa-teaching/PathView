accessing
getMinMetricValueFrom: aCollectionOfMorphs
	^ (aCollectionOfMorphs collect: [:each | self getMetricValueFrom: each]) sort first