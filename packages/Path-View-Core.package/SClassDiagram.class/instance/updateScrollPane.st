updating
updateScrollPane 
	"after the extend of the diagram changed, the scrollbars have to be adapted"

	self hasScrollPane ifTrue: [
		self scrollPane 
			resizeScrollBars;
			resizeScroller;
			hideOrShowScrollBars;
			vSetScrollDelta;
			hSetScrollDelta ]