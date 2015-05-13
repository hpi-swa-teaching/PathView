initialization
initializeWindow
	window := PluggableSystemWindow new
		model: self;
		addMorph: self fullFrame: (LayoutFrame new topFraction: 0;
			 leftFraction: 0;
			 rightFraction: 1;
			 bottomFraction: 1);
		label: 'suggestions:';
		extent: 60@40