*connectors-private
highlightMorphForBoundaryRect: rect 
	^(NCHighlightMorph new)
		bounds: rect;
		color: (Color green alpha: 0.3);
		lock: true;
		yourself