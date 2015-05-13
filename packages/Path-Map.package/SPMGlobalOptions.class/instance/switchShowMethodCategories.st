spec commands
switchShowMethodCategories
	self showMethodCategories: self showMethodCategories not.
	self changed: #showMethodCategories.
	self pathMap rebuildPathMap.