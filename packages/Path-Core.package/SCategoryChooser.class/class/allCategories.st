accessing
allCategories

	| categories |
	categories := Set new.
	Smalltalk allClasses do: [:each | 
		each category ifNotNil: [	categories add: each category]].
	^ categories asSortedCollection asArray