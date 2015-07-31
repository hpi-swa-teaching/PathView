zooming
zoomTo: aNumber
	"Receives a scale and updates the scroll pane. Makes sure labels of open morphs are toggled correctly (semantic zoom) and ensure that the diagram canvas is extended"

	(self canZoomTo: aNumber) ifTrue: [	
		self zoomLevel: aNumber.
		self scrollPane zoomToScale: self zoomLevel.
		self extendDiagramAfterZoom.

		(self shouldEnableSemanticZooming: aNumber)
			ifTrue: [ self setSemanticZooming: aNumber ]
			ifFalse: [ self disableSemanticZooming ]]