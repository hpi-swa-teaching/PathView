building
buildSelectedCategoriesListOn: aBuilder frame: aRectangle
	| listSpec |
	listSpec := aBuilder pluggableListSpec new.
	listSpec
		model: self;
		name: #selectedCategoriesList;
		list: #selectedCategoriesOfProject;
		frame: aRectangle.
	self windowSpec children add: listSpec.
