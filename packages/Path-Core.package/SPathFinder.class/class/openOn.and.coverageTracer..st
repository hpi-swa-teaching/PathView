instance creation
openOn: aTestMethodReference and: aMethodReference coverageTracer: aTracer
	| pathFinder |
	pathFinder := self openOn: aTestMethodReference coverageTracer: aTracer.
	pathFinder callTreeModel 
		searchNode: (self convertMethodReferenceToString: aMethodReference);
		changed: #getSearchQuery.
	^ pathFinder