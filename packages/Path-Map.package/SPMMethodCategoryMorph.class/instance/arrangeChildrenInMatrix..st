building
arrangeChildrenInMatrix: aCollection
	| childrenDim childrenOppDim matrixDim enoughSpace |
	childrenDim := (self dimension / self class minimumSize) floor.
	childrenOppDim := (aCollection size / childrenDim) ceiling.
	matrixDim := childrenDim@childrenOppDim.
	enoughSpace := (self 
						enoughSpaceForCollection: aCollection 
						matrixDimension: matrixDim).
	enoughSpace 
		ifTrue: [self arrangeMorphsInMatrixLayout: aCollection matrixDimension: matrixDim].
	^ enoughSpace