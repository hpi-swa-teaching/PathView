geometry
extendTopBy: aNumber with: anOffset
	
	self extent: self extent + (0 @ (aNumber + anOffset) * self zoomFactor).
	self top: self top - (aNumber + anOffset) * self zoomFactor