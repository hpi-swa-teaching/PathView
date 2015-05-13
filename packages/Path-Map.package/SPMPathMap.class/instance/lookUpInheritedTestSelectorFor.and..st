accessing-morphs
lookUpInheritedTestSelectorFor: aClass and: aMethodSymbol
	^ (aClass lookupSelector: aMethodSymbol) 
		ifNil: [self nullMethodMorph]
		ifNotNil: [((self getClassMorph: aClass) childrenMorphs 
					at: SPMMethodCategoryMorph inheritedTestSelectorId) 
					childrenMorphs at: aMethodSymbol]