accessing-morphs
lookUpMethodCategoryFor: aClass and: aMethodSymbol
	| methodCategory |
	methodCategory := self globalOptions showMethodCategories
		ifTrue: [aClass organization categoryOfElement: aMethodSymbol]
		ifFalse: ['no category'].
	aClass isClassSide 
		ifTrue: [methodCategory := (methodCategory asString, ' (class)') asSymbol].
	^ methodCategory