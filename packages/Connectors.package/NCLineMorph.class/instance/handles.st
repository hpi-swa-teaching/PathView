arrows
handles
	"Answer a collection of NCCurveHandleMorphs that can be used to adjust my vertices"
	| handles |
	handles := submorphs select: [ :ea | ea isCurveHandle ].
	handles size = vertices size ifTrue: [ ^handles ].

	^(1 to: vertices size) collect: [ :v |
		NCCurveHandleMorph new 
		target: self
		arguments: {  v}
		getPointSelector: #curveVertexAt:
		setPointSelector: #curveVertexAt:put:
		]