geometry testing
closestSegmentTo: aPoint
	"Answer the starting index of my (big) segment nearest to aPoint"
	^(self curveInfoNearest: aPoint) closestBigSegment