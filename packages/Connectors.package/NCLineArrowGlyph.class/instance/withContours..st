accessing
withContours: anArray 
	"anArray is expected to have lists of points already scaled to fit in a unit box"

	super withContours: anArray.
	self fixEndContours.
	originalFirstContour := self contours first copy.
	self updateBounds