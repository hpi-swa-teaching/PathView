as yet unclassified
curveInfoNearest: aPoint 
	"Answer the index of the segment nearest aPoint, along with the closest point, its distance, and the parametric value. "

	| closestPoint minDist minT segmentIndex i |
	closestPoint := minDist := nil.
	i := 0.
	self bezierSegmentsDo:  
			[:seg |
			i := i + 1. 
			seg lineSegmentsWithParametricValueDo: 
					[:p1 :p2 :t1 :t2 | 
					| curvePoint dist |
					curvePoint := aPoint nearestPointOnLineFrom: p1 to: p2.
					dist := curvePoint dist: aPoint.
					(closestPoint isNil or: [dist < minDist]) 
						ifTrue: 
							[closestPoint := curvePoint.
							minDist := dist.
							segmentIndex := i.
							minT := (p1 = p2) ifTrue: [ t1 ] ifFalse: [ t1 interpolateTo: t2 at: (curvePoint dist: p1) / (p1 dist: p2)] ]]].
	^{ closestPoint. segmentIndex. minDist. minT }