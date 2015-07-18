geometry
extendRightBy: aNumber with: anOffset

	self extent: self extent + ((aNumber + anOffset) * self zoomFactor @ 0).
	