*connectors-private
highlightMorphForAPRect: ap 
	^(NCHighlightMorph new)
		bounds: (Rectangle center: ap extent: 8 @ 8);
		color: (Color blue alpha: 0.4);
		lock: true;
		yourself