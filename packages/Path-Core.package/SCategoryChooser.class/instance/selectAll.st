actions
selectAll

	self selectedCategoriesList do: [:each | each value: true].
	self changed: #allCategoryNames.