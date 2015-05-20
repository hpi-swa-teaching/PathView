editing
handleForPosition: pos addAllowed: canAddVertex 
	"Answer a NCCurveHandleMorph that can be used to adjust me at the 
	given point."

	| v s curveInfo |
	curveInfo := self curveInfoNearest: pos.
	v := curveInfo vertexWithinProportion: 0.15
				andDistance: (40 max: self lineWidth / 2 + borderWidth + 2).
	s := curveInfo closestBigSegment.
	v isZero 
		ifTrue: 
			[(canAddVertex or: [s = 1 or: [s = (vertices size - 1)]]) 
				ifTrue: 
					["Make a new vertex to edit"

					v := s + 1.
					self setVertices: (self vertices 
								copyReplaceFrom: v
								to: v - 1
								with: (Array with: pos))]
				ifFalse: 
					[^NCCurveHandleMorph new 
						target: self
						arguments: { 
								s}
						getPointSelector: #curveSegmentAt:
						setPointSelector: #curveSegmentAt:put:]].
	^NCCurveHandleMorph new 
		target: self
		arguments: { 
				v}
		getPointSelector: #curveVertexAt:
		setPointSelector: #curveVertexAt:put: