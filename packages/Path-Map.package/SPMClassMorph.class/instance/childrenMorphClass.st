building
childrenMorphClass
	self globalOptions showMethodCategories
		ifTrue: [	^ SPMMethodCategoryMorph]
		ifFalse: [^ SPMAllMethodCategoriesMorph]