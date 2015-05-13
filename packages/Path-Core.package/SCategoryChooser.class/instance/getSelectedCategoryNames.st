accessing
getSelectedCategoryNames
	^ (self selectedCategoriesList
		select: [:each | each value]
		thenCollect: [:each | each key]) asArray