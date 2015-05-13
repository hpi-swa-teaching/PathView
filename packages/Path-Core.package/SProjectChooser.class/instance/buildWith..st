building
buildWith: aBuilder 
	
	self
		buildWindowOn: aBuilder;
		buildButtonsPanelWith: aBuilder 
			from: self projectControlButtons 
			model: self 
			frame: (0.0 @ 0.0 corner: 1.0 @ 0.1325);
		buildProjectListOn: aBuilder frame: (0.0 @ 0.1325 corner: 0.5 @ 1.0);
		buildSelectedCategoriesListOn: aBuilder frame: (0.5 @ 0.1325 corner: 1.0 @ 1.0).

	^ super buildWith: aBuilder