geometry
curveBounds

	^(Rectangle encompassing: self contourPoints)
		expandBy: (borderWidth + 4.0)