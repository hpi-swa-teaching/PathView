building
buildTestTreeOn: aBuilder
	| treeSpec |
	treeSpec := aBuilder pluggableTreeSpec new.
	treeSpec
		model: self;
		name: #testTree;
		roots: #rootsTestClasses;
		hasChildren: #hasChildrenTest:;
		getChildren: #getChildrenTest:;
		label: #labelTree:;
		setSelected: #newSelectedTestItem:;
		icon: #iconForConcernTestItem:;
		frame: (0.5 @ 0 corner: 1 @ 0.9).
	self windowSpec children add: treeSpec.