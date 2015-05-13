categories
categoriesOrderedByTestsFirst
	| testCategories allOtherCategories |
	testCategories := self categoriesWithTests asSortedCollection asOrderedCollection.
	allOtherCategories := self categories asSortedCollection asOrderedCollection
					 reject: [:each | testCategories includes: each].
	^ (testCategories, allOtherCategories) asArray