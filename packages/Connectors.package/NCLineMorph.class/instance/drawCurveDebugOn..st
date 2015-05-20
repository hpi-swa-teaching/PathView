drawing
drawCurveDebugOn: aaCanvas 
	"debug"

	aaCanvas 
		drawPolygon: self contourPoints
		color: nil
		borderWidth: 1
		borderColor: (Color blue alpha: 0.5).
	self bezierSegmentsDo:  [:seg | 
		seg controlPointsDo: [ :v |
			aaCanvas 
				drawOval: (Rectangle center: v extent: 7 @ 7)
				color: Color red
				borderWidth: 0
				borderColor: Color black]
	]