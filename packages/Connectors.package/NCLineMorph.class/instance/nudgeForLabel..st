geometry testing
nudgeForLabel: aRectangle
	"Try to move the label off me. Prefer labels on the top and right."

	| nudge |
	(self bounds intersects: aRectangle) ifFalse: [^ 0@0 ].
	nudge := 0@0.
	(aRectangle insetBy: 1) lineSegmentsDo: [ :rp1 :rp2 | | info bpts |
		info := self curveInfoNearest: rp1.
		bpts := info borderPoints.
		(aRectangle containsPoint: bpts first)
			ifTrue: [ nudge := nudge + (info closestPoint - bpts first) ]
			ifFalse: [
		(aRectangle containsPoint: bpts second)
			ifTrue: [  nudge := nudge - (info closestPoint - bpts second)  ]].
	].
	nudge isZero ifTrue: [ ^nudge ].
	^nudge / (nudge r)