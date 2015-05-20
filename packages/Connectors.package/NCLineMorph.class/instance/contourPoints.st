geometry-curves
contourPoints
	"Answer my contours flattened as a series of points."

	^Array streamContents: [ :s |
		self contours do: [ :c | s nextPutAll: c ]]