geometry-curves
lineSegmentsDo: aBlock
	self segmentsDo: [ :seg | seg lineSegmentsDo: aBlock ]