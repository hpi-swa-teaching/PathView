building
buildWith: aBuilder 
	
	self
		buildWindowOn: aBuilder;
		buildCategoryListOn: aBuilder;
		buildButtonPanelOn: aBuilder.

	^ super buildWith: aBuilder
