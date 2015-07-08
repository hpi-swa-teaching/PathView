geometry
extendRightBy: aValue with: anOffset

	| zoomFactor |
	zoomFactor := 1 / self zoomLevel.
	self extent: self extent + ((aValue + anOffset) * zoomFactor @ 0).
	