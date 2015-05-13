updating
updateCategories
	categories := self findCategories.
	categoriesSelected := categories.
	self changed: #categoryList; changed: #categorySelected.