drawing
drawText: aString on: aCanvas
	aCanvas 
		drawString: aString
		from: 1 
		to: aString size 
		in: (self bounds withLeft: self bounds left + 2)
		font: Preferences standardBalloonHelpFont 
		color: Color gray