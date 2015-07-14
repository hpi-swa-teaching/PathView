geometry
extendLeftBy: aNumber with: anOffset
	
	self extent: self extent + ((aNumber + anOffset) * self zoomFactor @ 0).
	self left: self left - (aNumber + anOffset) * self zoomFactor 
