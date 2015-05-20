accessing
scale: aFloatOrPoint 
	| newScale ratio newOffset |
	newScale := (aFloatOrPoint asPoint asFloatPoint) max: 0.001 @ 0.001.
	newScale = scale ifTrue: [^self].
	ratio := newScale / scale.
	newOffset := self offset * ratio.
	self contours: (self contours 
				collect: [:c | c collect: [:p | (p - self offset) * ratio + newOffset]]).
	scale := newScale.
	offset := newOffset.
	self updateBounds