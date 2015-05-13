toolbuilder
buildConcernTreeWith: aBuilder
	| treeSpec |
	treeSpec := aBuilder pluggableTreeSpec new.
	treeSpec
		model: self;
		name: #concernTree;
		roots: #rootsConcerns;
		hasChildren: #hasChildrenConcerns:;
		getChildren: #getChildrenConcerns:;
		label: #labelConcern:;
		setSelected: #selectedConcernItem:;
		icon: #iconForConcernItem:.
	^ treeSpec