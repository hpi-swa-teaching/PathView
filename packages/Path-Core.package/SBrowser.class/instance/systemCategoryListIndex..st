list reset
systemCategoryListIndex: anInteger 
	self codeSource: nil.
	super systemCategoryListIndex: anInteger.
	self selectedMethodReference ifNil: [self resetCaches].
	anInteger = 0
		ifFalse: [SPMPathMap allInstances do: [:each |
					[(each getCategoryMorph: self selectedSystemCategoryName)
						 highlight] on: Error do: []]].