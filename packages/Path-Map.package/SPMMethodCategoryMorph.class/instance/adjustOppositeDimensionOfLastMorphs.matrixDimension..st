building
adjustOppositeDimensionOfLastMorphs: aCollection matrixDimension: aPoint
	"Adjust opposite dimension of included morphs in case of method morphs it means width adjustment"
	| rest |
	rest := self oppositeDimension - ((self oppositeDimension / aPoint y) floor * aPoint y).
	rest = 0 ifFalse: [aCollection do: [:each | 
					self setChild: each 
						oppositeDimension: ((self getChildOppositeDimension: each) + rest)]].