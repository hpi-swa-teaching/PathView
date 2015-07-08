geometry
extendLeftBy: aValue with: anOffset
	
	| zoomFactor |
	zoomFactor := 1 / self zoomLevel.
	self extent: self extent + ((aValue + anOffset) * zoomFactor @ 0).
	self left: self left - (aValue + anOffset) * zoomFactor
