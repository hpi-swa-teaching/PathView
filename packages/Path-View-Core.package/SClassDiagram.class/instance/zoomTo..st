zooming
zoomTo: aNumber

	(self canZoomTo: aNumber) ifTrue: [	
		self zoomLevel: aNumber.		
		self scrollPane zoomToScale: self zoomLevel.

		"Transcript show: (self isDefaultZoom: aNumber) asString , ' ', 
			aNumber asString, ' ',
			self class defaultZoomLevel; cr."

		(self shouldEnableSemanticZooming: aNumber)
			ifTrue: [ self setSemanticZooming: aNumber ]
			ifFalse: [ self disableSemanticZooming ]]