initialization
initialize
	super initialize.
	smoothCurve := false.
	self vertices: (Array 
				with: 5 @ 0
				with: 200 @ 100
				with: 0 @ 200)
			lineWidth: 2
			lineColor: (Color r: 0 g: 0.7 b: 0.7)
			borderWidth: 0
			borderColor: Color black.
	self makeNoArrows.
