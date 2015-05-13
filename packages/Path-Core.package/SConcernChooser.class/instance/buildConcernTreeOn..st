building
buildConcernTreeOn: aBuilder
	| treeSpec |
	treeSpec := aBuilder pluggableTreeSpec new.
	treeSpec
		model: self;
		name: #concernTree;
		roots: #rootsConcerns;
		hasChildren: #hasChildrenConcerns:;
		getChildren: #getChildrenConcerns:;
		label: #labelTree:;
		setSelected: #newSelectedConcernItem:;
		icon: #iconForConcernItem:;		
		frame: (0 @ 0 corner: 0.5 @ 0.9).
	self windowSpec children add: treeSpec.