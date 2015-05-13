instance creation
parent: aMorph sourceCodeEntity: anObject pathMap: aPathMap
	^ self new
		parentMorph: aMorph;
		sourceCodeEntity: anObject;
		pathMap: aPathMap;
		setWeight;
		yourself