initialize-release
initializeWindow
	window := PluggableSystemWindow new.
	window addMorph: self fullFrame: (LayoutFrame new topFraction: 0;
			 leftFraction: 0;
			 rightFraction: 1;
			 bottomFraction: 1).
	window label: 'DicThesaurusRex - SpellChecking'