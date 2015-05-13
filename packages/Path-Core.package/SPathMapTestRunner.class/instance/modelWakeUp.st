user interface
modelWakeUp
	self pathMap isDirty
		ifTrue: [self pathMap rebuildPathMapWithSortByMetric].