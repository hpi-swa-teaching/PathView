actions
selectNone

	self selectedCategoriesList do: [:each | each value: false].
	self changed: #allCategoryNames.