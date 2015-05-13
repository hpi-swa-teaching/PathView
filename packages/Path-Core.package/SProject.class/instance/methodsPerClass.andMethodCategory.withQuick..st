method categories
methodsPerClass: aClass andMethodCategory: aCategory withQuick: aBoolean
	| categoryName symbols |
	(aCategory includesSubString: ' (class)')
		ifTrue: [
			"without  (class)"
			categoryName := (aCategory copyFrom: 1 to: aCategory size - 8) asSymbol. 
			symbols := aClass class organization listAtCategoryNamed: categoryName.
			aBoolean 
				ifFalse: [^ symbols select: [:each | | method |
								method := (aClass class >> each).
								method isQuick not and: [method isAbstract not]]]]
		ifFalse: [symbols := aClass organization listAtCategoryNamed: aCategory.
			aBoolean 
				ifFalse: [^ symbols select: [:each | | method |
								method := (aClass >> each).
								method isQuick not and: [method isAbstract not]]]].
		^ symbols