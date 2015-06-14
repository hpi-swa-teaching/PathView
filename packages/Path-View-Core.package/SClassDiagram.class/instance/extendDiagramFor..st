geometry
extendDiagramFor: aMorph

	self extendDiagramAreaTo: (self boundsInWorld merge: aMorph boundsInWorld).
	"create method on SScrollPane to update all parameters?"
	self scrollPane 
		resizeScrollBars;
		resizeScroller;
		hideOrShowScrollBars;
		vSetScrollDelta;
		hSetScrollDelta.