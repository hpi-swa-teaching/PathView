toolbar-actions
zoom: aNumber
	
	(self ownerThatIsA: SScrollPane) zoomInBy: aNumber.
	self changed: #canZoomOut.