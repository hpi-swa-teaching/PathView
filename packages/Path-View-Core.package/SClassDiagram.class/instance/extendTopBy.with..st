geometry
extendTopBy: aValue with: anOffset
	
	| zoomFactor |
	zoomFactor := 1 / self zoomLevel.
	self extent: self extent + (0 @ (aValue + anOffset) * zoomFactor).
	self top: self top - (aValue + anOffset) * zoomFactor