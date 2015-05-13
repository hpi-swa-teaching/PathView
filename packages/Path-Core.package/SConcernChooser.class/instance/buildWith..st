building
buildWith: aBuilder 
	self 
		buildWindowOn: aBuilder;
		buildConcernTreeOn: aBuilder;
		buildTestTreeOn: aBuilder;
		buildButtonsOn: aBuilder.
	^ super buildWith: aBuilder