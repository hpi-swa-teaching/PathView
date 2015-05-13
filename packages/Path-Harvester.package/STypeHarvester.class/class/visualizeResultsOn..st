pathMap-hooks
visualizeResultsOn: aPathMap
	super visualizeResultsOn: aPathMap.
	aPathMap project typesBucket ifNil: [^ self].
	self 
		visualizeTemporariesOn: aPathMap;
		visualizeReturnOn: aPathMap;
		visualizeMembersOn: aPathMap.	