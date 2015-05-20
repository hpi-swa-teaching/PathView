initialization
addScrollerTo: playfield
	playfield hResizing: #rigid;
		 vResizing: #rigid;
		 extent: 400 @ 400.
	scrollPane := TwoWayScrollPane new
				extent: self stateRectangle extent;
				 hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 menuSelector: #scrollBarMenu:;
				 menuTitleSelector: #externalName;
				 model: self;
				 borderWidth: 0.
	scrollPane scroller addMorph: playfield.
	self stateRectangle addMorphBack: scrollPane.
	self extent: (self extent max: 200@150).
	self initializeScrollPane.
	self stateRectangle layoutChanged; fullBounds.
	playfield on: #mouseDown send: #mouseDown:from: to: self.
	playfield on: #keyStroke send: #keyStroke: to: self.
