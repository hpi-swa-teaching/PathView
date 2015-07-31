scrolling
scaleChangedTo: newScale
	"To handle, that the scrollbars cannot cope with the change of the scale, we deactivate them if the scale is not one."
	
	newScale = 1
		ifTrue: [ self showScrollBars; setScrollDeltas ]
		ifFalse: [ self hideScrollBars ]