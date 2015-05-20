line attachment
drawSampleFormForLineWidth: lw borderWidth: bw onCanvas: aCanvas 
	| lineShape p1 p2 bby halfLw |
	self openForLineWidth: lw.
	halfLw := (lw + bw) * 2.0 / 2.0.
	p1 := self contours first first.
	p2 := self contours first last.
	bby := halfLw * 4 + self bounds bottom.
	lineShape := { 
				{ 
					p1.
					p1.
					p1 x @ bby.
					p1 x @ bby.
					p1 x @ bby.
					p2 x @ bby.
					p2 x @ bby.
					p2.
					p2}}.
	aCanvas transformBy: (MatrixTransform2x3 
				withOffset: (self bounds encompass: 0 @ 0) topCenter negated)
		during: 
			[:canvas | 
			canvas 
				drawGeneralBezierShape: lineShape , self contours
				color: (Color blue alpha: 0.4)
				borderWidth: bw
				borderColor: Color black.
			canvas 
				drawOval: (Rectangle center: 0 @ 0 extent: halfLw)
				color: (Color red alpha: 0.6)
				borderWidth: 1
				borderColor: Color black]