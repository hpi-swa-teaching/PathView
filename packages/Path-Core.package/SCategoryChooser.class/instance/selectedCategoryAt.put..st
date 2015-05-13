list commands
selectedCategoryAt: anIndex put: aBoolean 
	| result |
	result := (self selectedCategoriesList at: anIndex) value: aBoolean.
	self windowMorph changed.
	^ result