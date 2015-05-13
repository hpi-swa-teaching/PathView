layouting
setLayoutFrame: aLayoutFrame of: aMorph
	
	^ aMorph
		layoutFrame: aLayoutFrame;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself