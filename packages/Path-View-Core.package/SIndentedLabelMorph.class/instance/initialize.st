initialization
initialize
	
	super initialize.
	self
		color: Color transparent;
		height: 1;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		addMorph: (indentationMorph :=
			Morph new
				width: 0 ;
				height: 1; "Need to have impact on layouting."
				color: Color transparent;
				yourself);
		addMorphBack: (labelMorph := StringMorph contents: '').