initialization
initializeScrollBars

	super initializeScrollBars.

	self removeMorph: scroller.

	scroller := SScroller new color: Color transparent.
	scroller offset: 0 @ 0.
	self addMorph: scroller.