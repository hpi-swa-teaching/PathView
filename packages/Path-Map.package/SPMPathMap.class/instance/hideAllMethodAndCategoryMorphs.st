visualization
hideAllMethodAndCategoryMorphs

	self rootMorph traverseAllChildsAndDo: [:each | 
		(each isMethodMorph or: [each isMethodCategoryMorph])
			ifTrue: [each hide]].