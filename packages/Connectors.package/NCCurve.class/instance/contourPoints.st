accessing contours
contourPoints
	"Answer my contours flattened as a series of points."
	^self contourPointsCollect: [ :ea | ea ].