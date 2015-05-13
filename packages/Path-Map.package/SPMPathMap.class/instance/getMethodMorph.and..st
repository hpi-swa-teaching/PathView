accessing-morphs
getMethodMorph: aClass and: aMethodSymbol
	| classMorph methodCategory |
	(self checkValid: aClass and: aMethodSymbol)
		ifFalse: [^ self nullMethodMorph].
	(self checkForInheritedTestSelector: aClass and: aMethodSymbol)
		ifTrue: [	^ self lookUpInheritedTestSelectorFor: aClass and: aMethodSymbol].		
	(self checkVisibilityOf: aClass and: aMethodSymbol)
		ifFalse: [^ self nullMethodMorph].
	classMorph := self getClassMorph: aClass.
	methodCategory := self lookUpMethodCategoryFor: aClass and: aMethodSymbol.		
	^ (classMorph childrenMorphs at: methodCategory) childrenMorphs 
		at: aMethodSymbol
