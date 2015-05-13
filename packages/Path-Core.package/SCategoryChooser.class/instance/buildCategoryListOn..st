building
buildCategoryListOn: aBuilder

	| listSpec |
	listSpec := aBuilder pluggableMultiSelectionListSpec new.
	listSpec
		model: self;
		name: #categoryList;
		list: #allCategoryNames;
		menu: #categoryMenu:;
		getSelectionList: #selectedCategoryAt:;
		setSelectionList: #selectedCategoryAt:put:;
		frame: (0 @ 0 corner: 1 @ 0.75).
	self windowSpec children add: listSpec.
	