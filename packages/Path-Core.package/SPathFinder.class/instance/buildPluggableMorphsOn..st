building
buildPluggableMorphsOn: aBuilder
	self
		buildWindowOn: aBuilder;
		buildSearchFieldOn: aBuilder frame: (LayoutFrame
			fractions: (0@0 corner: 1@0) 
			offsets: (453@ -4 corner: 0@26));
		buildCallTreeOn: aBuilder frame: (LayoutFrame
			fractions: (0@0 corner: 1@1) 
			offsets: (0@26 corner: 0@0)).
	super buildWith: aBuilder.