drawing
asFormWithExtent: extent depth: depth bgColor: bgColor fill: fillColor borderWidth: bw borderColor: bc 
	| canvas |
	canvas := BalloonCanvas extent: extent depth: depth.
	self drawOn: canvas
		in:  (Rectangle origin: 0@0 corner: extent)
		fill: fillColor
		borderWidth: bw
		borderColor: bc. 
	^canvas form