initialization
initializeSubMorphs
	
	self 
		addMorph: self nameMorph;
		addMorphBack: self implementationMorph;
		addMorphFront: self labelOverlayMorph.

	self hideLabelOverlay