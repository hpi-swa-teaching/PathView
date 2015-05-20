geometry testing
curveInfoNearest: aPoint 
	"Answer the index of the segment nearest aPoint, along with the closest point, its distance, and the parametric value. "

	| closestPoint minDist minT segmentIndex |
	closestPoint := minDist := nil.
	self segments withIndexDo: 
			[:seg :i | 
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
	^NCLineCurveInfo new 
		line: self
		targetPoint: aPoint
		segmentIndex: segmentIndex
		closestPoint: closestPoint
		minDist: minDist
		minT: minT