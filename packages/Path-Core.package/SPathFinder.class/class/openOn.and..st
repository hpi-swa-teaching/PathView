instance creation
openOn: aTestMethodReference and: aMethodReference

	| pathFinder |
	pathFinder := self openOn: aTestMethodReference.
	pathFinder callTreeModel 
		searchNode: (self convertMethodReferenceToString: aMethodReference);
		changed: #getSearchQuery.
	^ pathFinder