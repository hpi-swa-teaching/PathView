building
buildWith: aBuilder 
	self 
		createModels;
		buildPluggableMorphsOn: aBuilder;
		buildCustomMorphs;
		resizeWindow.
	^ self windowMorph