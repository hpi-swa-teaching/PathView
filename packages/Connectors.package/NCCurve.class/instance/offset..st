accessing
offset: aPoint 
	| newOffset delta |
	newOffset := aPoint asPoint asFloatPoint.
	delta := newOffset - self offset.
	self contours: (self contours collect: [:c | c + delta]).
	offset  := newOffset.
	self updateBounds