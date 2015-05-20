geometry-curves
computeContours
	| sides csize |
	(vertices size = 2 and: [vertices first = vertices second]) 
		ifTrue: [^contours := #()].
	true "(self lineWidth > 2 or: [self isCurve]) "
		ifTrue: [sides := self outsidePoints	"sideA, sideB reversed"]
		ifFalse: 
			[| bpts |
			bpts := self bezierPoints.
			sides := { 
						bpts.
						bpts reversed}].
	contours
		at: 1 put: sides first;
		at: 3 put: sides second.
	csize := contours first size.
	(contours at: 3)
		at: csize put: contours fourth first;
		at: 1 put: (contours second at: arrows second joinIndex).
	(contours at: 1)
		at: 1 put: (contours fourth at: arrows first joinIndex);
		at: csize put: contours second first.
	contours := contours collect: [ :ctr | ctr collect: [ :pt | pt roundTo: 0.001 ]].
	^contours