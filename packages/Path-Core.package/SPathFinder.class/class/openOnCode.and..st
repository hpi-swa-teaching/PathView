instance creation
openOnCode: aSourceCodeString and: aMethodReference

	| pathFinder |
	pathFinder := self openOnCode: aSourceCodeString.
	pathFinder callTreeModel 
		searchNode: (self convertMethodReferenceToString: aMethodReference);
		changed: #getSearchQuery.
	^ pathFinder