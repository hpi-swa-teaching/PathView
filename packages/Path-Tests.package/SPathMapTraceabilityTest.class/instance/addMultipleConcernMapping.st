running
addMultipleConcernMapping
	| concern2 |
	self addGroupAndConcernToChooser.
	self chooser 
		newSelectedTestItem: {SSBTest. #testComplexTrace};
		addMapping.
	concern2 := 'myConcern2'.
	[self chooser addConcern] valueSupplyingAnswer: concern2.
	self chooser newSelectedConcernItem: {self group. concern2}.
	self chooser 
		newSelectedTestItem: {SSBTest. #testBinary};
		addMapping.