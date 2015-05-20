arrows
arrowVertices
	"Answer my vertices, but with the first and last point from arrowJoints"
	| retval |
	retval := vertices collect: [ :v | v asFloatPoint ].
	retval at: 1 put: self arrowJoints first.
	retval at: retval size put: self arrowJoints second.
	^retval