building-pluggable-morphs
buildCallTreeOn: aBuilder frame: aRectangle 
	| treeSpec |
	treeSpec := SPluggableTreeSpec new.
	treeSpec
		model: self callTreeModel;
		name: #callTree;
		roots: #rootCallNodes;
		hasChildren: #hasChildren:;
		getChildren: #getChildren:;
		setSelected: #newSelectedItem:;
		getSelectedPath: #getSelectedPath;
		menu: #callTreeMenu:;
		highlightItem: #highlightItem:;
		steppingSelectionHighlightItems: #steppingSelectionHighlightItems;
		steppingSelectionItem: #steppingNode;
		indentingListItemMorph: self indentingListItemClass;
		icon: #getIcon:;
		frame: aRectangle.
	self windowSpec children add: treeSpec