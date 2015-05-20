*connectors
drawContourEndDotsOn: canvas 
	| dotSize |
	dotSize := ((bounds extent x max: bounds extent y) / 20) asPoint asFloatPoint.
	contours withIndexDo: 
			[:a :i | 
			canvas 
				drawOval: (Rectangle center: a first extent: dotSize)
				color: (Color 
						h: i * 60 + 100.0
						s: 1.0
						v: 1.0 alpha: 0.3)
				borderWidth: 0
				borderColor: nil.
			canvas 
				drawOval: (Rectangle center: a last extent: dotSize)
				color: (Color 
						h: i * 60 + 200.0
						s: 1.0
						v: 1.0  alpha: 0.3)
				borderWidth: 0
				borderColor: nil]