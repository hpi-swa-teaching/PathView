geometry
rotationDegrees: degrees
	self changed.
	line rotationDegrees: degrees.
	constraints first center: line vertices first.
	constraints last center: line vertices last.
	self changed.