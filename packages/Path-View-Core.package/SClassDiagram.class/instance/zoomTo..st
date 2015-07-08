zooming
zoomTo: aNumber

	(self canZoomTo: aNumber) ifTrue: [	
		self zoomLevel: aNumber.
		self scrollPane zoomToScale: self zoomLevel.
		self extendDiagramAfterZoom.

		(self shouldEnableSemanticZooming: aNumber)
			ifTrue: [ self setSemanticZooming: aNumber ]
			ifFalse: [ self disableSemanticZooming ]]