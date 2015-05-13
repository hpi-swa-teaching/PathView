searching
searchNode: aText

	| foundedNodes |
	self clearHighlighting.
	self rootNode ifNotNil: [
		self searchQuery: aText asString.
		foundedNodes := OrderedCollection new.
		self traverseCallTree: self rootNode 
			with: [:aNode | (aNode asString includesSubString: self searchQuery) 
							ifTrue: [foundedNodes add: aNode]].
		self 
			highlightedItems: foundedNodes;
			changed: #highlightItem:;
			selectNextSearchResult: foundedNodes.
		^ foundedNodes]
	