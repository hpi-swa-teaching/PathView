geometry
extent: aPoint
	| before |
	before := self extent.
	super extent: aPoint.
	(self pathMap notNil and: [before ~= aPoint])
		ifTrue: [self pathMap rebuildPathMapWithSortByMetric].