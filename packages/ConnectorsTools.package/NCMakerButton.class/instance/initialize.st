initialization
initialize
	super initialize.
	self
		color: self defaultColor;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		listCentering: #center;
		wrapCentering: #center;
		enableDragNDrop;
		borderWidth: 2;
		borderRaised;
		actionSelector: #openInHand.
