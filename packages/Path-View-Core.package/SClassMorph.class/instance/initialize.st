initialization
initialize
	
	super initialize.
	self
		borderWidth: 0;
		color: self class backgroundColor;
		highlight: nil;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		rubberBandCells: true;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		showLabel: false;
		initializeSubMorphs.