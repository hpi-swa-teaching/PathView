initialize
initialize
	
	super initialize.
	self
		disableDragNDrop;
		layoutInset: 3;
		borderWidth: 3;
		borderColor: Color gray;
		color: Color transparent;
		initializeThumbnailMorph;
		initializeViewportMorph;
		addMorph: thumbnailMorph;
		addMorphFront: viewportMorph;
		on: #mouseDown send: #viewportJumped: to: self;
		on: #mouseMove send: #viewportMoved: to: self; "This will happen, if viewport-dragging has originated by a viewportJumped:"
		scalingFactor: 0.1.