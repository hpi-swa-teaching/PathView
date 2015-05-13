callgraph
setAsCurrentSelection

	self callTreeModel 
		newSelectedItem: self;
		changed: #getSelectedPath.