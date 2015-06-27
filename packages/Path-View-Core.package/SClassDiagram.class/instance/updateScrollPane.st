updating
updateScrollPane 
	"after extent of the diagram has changed, the scrollbars have to be adapted"

	self hasScrollPane ifTrue: [
		self scrollPane 
			resizeScrollBars;
			resizeScroller;
			hideOrShowScrollBars;
			vSetScrollDelta;
			hSetScrollDelta ]
