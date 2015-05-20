arrows
updateArrowContours
	"Open the arrows for my line width.
	Set contours[2] and contours[4] with arrow contours.
	Put the arrow join points into arrowJoints."

	| transform lw |
	lw := (smoothCurve not and: [self lineWidth <= 0]) 
				ifTrue: [0]
				ifFalse: [self lineWidth].
	self arrows first openForLineWidth: lw.
	arrows second openForLineWidth: lw.
	transform := (MatrixTransform2x3 
				withAngle: (vertices second - vertices first) negated theta 
						radiansToDegrees + 90.0) 
					offset: vertices first.
	contours at: 4 put: (arrows first contourPointsTransformedBy: transform).
	self arrowJoints at: 1
		put: (transform transformPoint: arrows first joinPoint).
	transform := (MatrixTransform2x3 
				withAngle: (vertices last - vertices nextToLast) theta radiansToDegrees 
						+ 90.0) 
					offset: vertices last.
	contours at: 2 put: (arrows second contourPointsTransformedBy: transform).
	self arrowJoints at: 2
		put: (transform transformPoint: arrows second joinPoint)