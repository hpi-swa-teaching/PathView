private
privateMoveBy: delta
	super privateMoveBy: delta.
	(self valueOfProperty: #referencePosition) ifNotNilDo:
		[:oldPos | self setProperty: #referencePosition toValue: oldPos + delta].
	self setVertices: (vertices collect: [:p | p + delta]).
