accessing contours
contourPointsTransformedBy: aTransform
	^self contourPointsCollect: [ :p | aTransform transformPoint: p ].