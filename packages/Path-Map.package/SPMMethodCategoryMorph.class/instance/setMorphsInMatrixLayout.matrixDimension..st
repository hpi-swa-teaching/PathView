building
setMorphsInMatrixLayout: aCollection matrixDimension: aPoint
	| positionD positionOD childrenLeftFirstDim morph  morphsPerFirstDim lastMorphs | 	
	morphsPerFirstDim := (aCollection size / aPoint y) ceiling.
	positionD := self positionDimension.
	positionOD := self positionOppositeDimension.
	childrenLeftFirstDim := morphsPerFirstDim.
	lastMorphs := OrderedCollection new.
	aCollection do: [:each | 
		morph := self childrenMorphs at: each.
		lastMorphs add: morph.
		self 
			setChild: morph dimension: (self dimension / morphsPerFirstDim) floor;
			setChild: morph oppositeDimension: (self oppositeDimension / aPoint y) floor;
			setChild: morph position: positionD oppositePosition: positionOD.
		positionD := positionD + (self getChildDimension: morph).
		childrenLeftFirstDim := childrenLeftFirstDim - 1.
		childrenLeftFirstDim = 0
			ifTrue: [childrenLeftFirstDim := morphsPerFirstDim.
				positionD := self positionDimension.
				positionOD := positionOD + (self oppositeDimension / aPoint y) floor.
				self adjustMorphsInDimension: lastMorphs.
				lastMorphs := OrderedCollection new]].
	lastMorphs ifNotEmpty: [self adjustMorphsInDimension: lastMorphs].
	lastMorphs
		ifEmpty: [^ (aCollection last: morphsPerFirstDim) collect: [:each | self childrenMorphs at: each]]
		ifNotEmpty: [^ lastMorphs]