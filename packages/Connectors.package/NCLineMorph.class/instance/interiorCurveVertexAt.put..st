editing
interiorCurveVertexAt: index put: aPoint
	(index = 1 or: [ index = vertices size ]) ifTrue: [ ^true ].
	^self curveVertexAt: index put: aPoint