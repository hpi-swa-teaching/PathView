building
arrangeMorphsInMatrixLayout: aCollection matrixDimension: aPoint
	|  lastChildren |
	lastChildren := self setMorphsInMatrixLayout: aCollection matrixDimension: aPoint.
	self adjustOppositeDimensionOfLastMorphs: lastChildren matrixDimension: aPoint.