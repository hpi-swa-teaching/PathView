initialization
initialize
	super initialize.
	self
		layoutPolicy: ProportionalLayout new;
		disableDragNDrop;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 0@0;
		cellInset: 2@2;
		color: self defaultColor;
		borderColor: Color black;
		borderWidth: 2;
		borderRaised;
		extent: 44@44.