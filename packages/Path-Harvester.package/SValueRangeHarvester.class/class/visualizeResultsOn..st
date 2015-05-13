pathMap-hooks
visualizeResultsOn: aPathMap
	super visualizeResultsOn: aPathMap.
	aPathMap project valueRangeBucket ifNil: [^ self].
	self 
		createColorMapping;
		visualizeMethodLevelOn: aPathMap;
		visualizeClassLevelOn: aPathMap.