spec commands
switchShowAllMethods
	self showAllMethods: self showAllMethods not.
	self changed: #showAllMethods.
	self pathMap rebuildPathMap.