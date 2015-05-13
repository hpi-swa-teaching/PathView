initialize-release
reset
	
	self 
		rootNode: nil;
		currentNode: nil;
		history: OrderedCollection new;
		currentHistoryNode: 0;
		newSelectedItem: nil;
		highlightedItems: nil;
		steppingNode: nil;
		steppingPosition: 0.