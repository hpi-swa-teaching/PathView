orthogonality
beOrthogonal: aBoolean
	aBoolean ifTrue: [ self setProperty: #orthogonal toValue: true]
		ifFalse: [ self removeProperty: #orthogonal ]
