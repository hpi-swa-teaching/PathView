geometry
extendBottomBy: aNumber with: anOffset

	self extent: self extent + (0 @ (aNumber + anOffset) * self zoomFactor)
	