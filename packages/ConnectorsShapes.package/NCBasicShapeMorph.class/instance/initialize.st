initialization
initialize
	super initialize.
	self listDirection: #topToBottom;
		 hResizing: #shrinkWrap;
		 extent: 1 @ 1;
		 vResizing: #shrinkWrap;
		 wrapCentering: #center;
		 layoutInset: 0;
		 color: self defaultColor;
		borderColor: self defaultBorderColor;
		borderWidth: self defaultBorderWidth;
		 extent: 100 @ 100;
		 layoutPolicy: TableLayout new;
		 layoutChanged.
