accessing-morphs
getMethodCategoryMorph: aClass and: aMethodCategory
	^ (self getClassMorph: aClass) childrenMorphs at: aMethodCategory
