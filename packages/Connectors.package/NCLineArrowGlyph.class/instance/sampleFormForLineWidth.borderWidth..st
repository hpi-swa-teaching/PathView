line attachment
sampleFormForLineWidth: lw borderWidth: bw 
	| form rect canvas halfLw |
	halfLw := (lw + bw) * 2.0 / 2.0.
	rect := (self bounds extendBy: 0.0 @ (halfLw * 4)) outsetBy: halfLw.
	form := Form extent: rect extent depth: 32.
	form fillColor: Color white.
	canvas := BalloonCanvas on: form.
	canvas aaLevel: 4.
	canvas 
		transformBy: (MatrixTransform2x3 withOffset: (rect width / 2) @ halfLw)
		during: 
			[:tcanvas | 
			self 
				drawSampleFormForLineWidth: lw
				borderWidth: bw
				onCanvas: tcanvas].
	canvas flush.
	^form