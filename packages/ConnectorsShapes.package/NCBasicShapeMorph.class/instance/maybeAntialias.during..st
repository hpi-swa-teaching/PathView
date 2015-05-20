private
maybeAntialias: canvas during: block 
	^ self drawAntialiased
		ifTrue: [(canvas asBalloonCanvas aaLevel: 4;
				 yourself)
				clipBy: (self fullBounds outsetBy: 6)
				during: block]
		ifFalse: [block value: canvas]