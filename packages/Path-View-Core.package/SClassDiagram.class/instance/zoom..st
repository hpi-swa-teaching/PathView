toolbar-actions
zoom: aNumber
	
	(self ownerThatIsA: SScrollPane) zoomInBy: aNumber.
	self zoomLevel: aNumber.
	self changed: #canZoomOut.