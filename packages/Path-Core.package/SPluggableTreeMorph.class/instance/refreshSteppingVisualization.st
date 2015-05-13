refreshing
refreshSteppingVisualization
	self refresh: [:node | self refreshSteppingSelectionOf: node] fromNode: self firstRootTreeEntry.
	self steppingSelectionHighlightItems: (self model perform: self steppingSelectionHighlightItemsSelector).
	self steppingSelectionItem: (self model perform: self steppingSelectionItemSelector).
	self changed.