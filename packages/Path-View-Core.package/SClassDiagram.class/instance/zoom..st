toolbar-actions
zoom: aNumber
	
	self scrollPane zoomInBy: aNumber.
	self changed: #canZoomOut.