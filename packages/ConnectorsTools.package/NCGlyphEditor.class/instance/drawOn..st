drawing
drawOn: aCanvas 
	| ovalsize |
	super drawOn: aCanvas.
	glyph ifNil: [^self].
	ovalsize := (glyph bounds extent x max: glyph bounds extent y) / 10.0.
	aCanvas 
		frameAndFillRectangle: (self editBox)
		fillColor: self color
		borderWidth: 1
		borderColor: Color black.
	aCanvas asBalloonCanvas clipBy: self editBox
		during: 
			[:canvas | 
			canvas transformBy: self transform
				during: 
					[:aacanvas | 
					glyph drawOn: aacanvas fgColor: Color gray.
					showDots ifTrue: [glyph drawContourEndDotsOn: aacanvas].
					joinPoint ifNotNil: [
					aacanvas 
						drawOval: (Rectangle center: joinPoint extent: ovalsize)
						color: (Color red alpha: 0.6)
						borderWidth: 1
						borderColor: Color black].
					endPoint ifNotNil: [
					aacanvas 
						drawOval: (Rectangle center: endPoint extent: ovalsize)
						color: (Color green alpha: 0.6)
						borderWidth: 1
						borderColor: Color black].
					self clickPoints do: 
							[:cp | 
							aacanvas 
								drawOval: (Rectangle center: cp extent: 20 @ 20)
								color: (Color blue alpha: 0.6)
								borderWidth: 1
								borderColor: Color black]]]