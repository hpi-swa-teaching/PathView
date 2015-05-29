initialization
initialize
	
	super initialize.
	self
		initializeToolbar;
		beSmoothCurve;
		arrowNames: self class arrowTypes;
		name: self class instanceName;
		fromMorph: sourceMorph toMorph: targetMorph. "This redundantly sets the two fields again."