arrows
fullLineWidth
	| bw |
	bw := 0.
	self borderColor 
		ifNotNilDo: [:bc | bc isTransparent ifFalse: [bw := borderWidth]].
	^self lineWidth + (2 * bw) + 2