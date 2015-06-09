initialize
initializeViewportMorph
	
	scrollPane scroller
		onOffsetChange: [ self refreshViewport ];
		onScaleChange: [ self refreshViewport ].
	viewportMorph := BorderedMorph new
		borderWidth: 2;
		borderColor: Color gray;
		color: Color transparent;
		on: #startDrag send: #viewportStartedDrag: to: self;
		on: #mouseMove send: #viewportMoved: to: self;
		yourself.