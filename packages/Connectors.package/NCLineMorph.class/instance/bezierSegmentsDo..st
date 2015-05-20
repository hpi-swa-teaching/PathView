geometry-curves
bezierSegmentsDo: segmentBlock 
	"Emit a sequence of LineSegment subinstances into segmentBlock"
	self segmentsDo: [ :s | segmentBlock value: s asBezier2Segment ]