accessing
getMaxMetricValueFrom: aCollectionOfMorphs
	^ (aCollectionOfMorphs collect: [:each | self getMetricValueFrom: each]) sort last