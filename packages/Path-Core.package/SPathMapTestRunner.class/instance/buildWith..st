building
buildWith: aBuilder
	self 
		buildPluggableMorphsOn: aBuilder;
		buildCustomMorphs.
	^ self windowMorph