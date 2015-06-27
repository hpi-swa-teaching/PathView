initialization
initialize
	
	super initialize.
	self
		isCollapsed: false;
		color: (Color r: 0.972 g: 0.972 b: 0.5);
		layoutPolicy: TableLayout new;
		layoutInset: 10;
		borderWidth: 1;
		borderColor: Color black;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		initializeTextMorph;
		addMorph: textMorph.