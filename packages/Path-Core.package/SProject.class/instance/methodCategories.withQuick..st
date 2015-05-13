method categories
methodCategories: aClass withQuick: aBoolean
	| categories |
	categories := #().
	aClass organization elementArray ifNotEmpty: [
		categories := (aClass organization categories select: [:each | 
							(aClass organization isEmptyCategoryNamed: each) not]).
	aBoolean 
		ifFalse: [categories := categories 
						select: [:each | (aClass organization listAtCategoryNamed: each)
							anySatisfy: [:symbol | | method |
								method := (aClass >> symbol).
								method isQuick not and: [method isAbstract not]]]]].
	aClass isMeta
		ifTrue: [categories := categories collect: [:each | (each, ' (class)') asSymbol]].					
	^ categories