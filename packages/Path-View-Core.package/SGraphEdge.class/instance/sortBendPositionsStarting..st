calculations
sortBendPositionsStarting: aRectangle
	"The closest point to aRectangle will be the first bend-point, then nearest point is appended, respectively."
	
	| bendPositionsCopy currentPoint |
	bendPositions ifEmpty: [ ^ self ].
	currentPoint := bendPositions detectMin: [ :point | (aRectangle pointNearestTo: point) dist: point ].
	bendPositionsCopy := bendPositions copyWithout: currentPoint.
	bendPositions := OrderedCollection with: currentPoint.
	[ bendPositionsCopy notEmpty ]
		whileTrue: [ | nearest |
			nearest := bendPositionsCopy detectMin: [ :point | point dist: currentPoint ].
			currentPoint := nearest.
			bendPositionsCopy remove: nearest.
			bendPositions addLast: nearest ].