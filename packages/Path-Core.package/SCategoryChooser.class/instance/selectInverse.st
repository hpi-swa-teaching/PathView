actions
selectInverse

	self selectedCategoriesList do: [:each | each value: each value not].
	self changed: #allCategoryNames.