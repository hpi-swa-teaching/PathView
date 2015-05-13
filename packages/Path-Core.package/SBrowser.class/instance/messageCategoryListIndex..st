list reset
messageCategoryListIndex: anInteger
	super messageCategoryListIndex: anInteger.
	self selectedMethodReference ifNil: [self resetCaches].
	anInteger = 0
		ifFalse: [SPMPathMap allInstances do: [:each |
					[(each 
						getMethodCategoryMorph: self selectedClassOrMetaClass 
						and: self selectedMessageCategoryName)
							highlight] on: Error do: []]].