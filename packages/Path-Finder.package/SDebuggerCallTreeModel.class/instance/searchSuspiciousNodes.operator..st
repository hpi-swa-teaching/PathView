searching
searchSuspiciousNodes: aNumber operator: aSymbol
	| foundedNodes nodeString |
	self clearHighlighting.
	self rootNode ifNotNil: [
		foundedNodes := OrderedCollection new.
		self traverseCallTree: self rootNode 
			with: [:aNode | 
				nodeString := aNode asString.
				((nodeString first = ${) and: 
					[nodeString splitInteger second perform: aSymbol with: aNumber])
						ifTrue: [foundedNodes add: aNode]].
		self 
			highlightedItems: foundedNodes;
			changed: #highlightItem:;
			selectNextSearchResult: foundedNodes.
		^ foundedNodes].