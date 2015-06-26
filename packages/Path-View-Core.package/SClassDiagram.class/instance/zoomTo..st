zooming
zoomTo: aNumber

	(self canZoomTo: aNumber) ifTrue: [	
		self zoomLevel: aNumber.		
		self scrollPane zoomToScale: self zoomLevel ]