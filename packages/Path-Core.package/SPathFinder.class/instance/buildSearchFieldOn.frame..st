building-pluggable-morphs
buildSearchFieldOn: aBuilder frame: aRectangle 
	| inputSpec |
	inputSpec := aBuilder pluggableInputFieldSpec new
		model: self callTreeModel;
		name: #searchInputField;
		getText: #getSearchQuery;
		setText: #searchNode:;
		frame: aRectangle.
	self windowSpec children add: inputSpec