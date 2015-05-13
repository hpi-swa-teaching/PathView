building
enoughSpaceForCollection: aCollection matrixDimension: aPoint
	| enoughSpaceIsAvailable |
	enoughSpaceIsAvailable := (self oppositeDimension / aPoint y) >= self class minimumSize.
	enoughSpaceIsAvailable ifFalse: [self availableSize: aPoint x * (self oppositeDimension / self class minimumSize) 
								 isNotSufficientFor: aCollection].
	^ enoughSpaceIsAvailable