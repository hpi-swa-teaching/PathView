instance creation
openOn: aTestMethodReference coverageTracer: aTracer
	| pathFinder |
	pathFinder := self open.
	pathFinder coverageTracer: aTracer.
	pathFinder testChooserModel setCurrentTest: aTestMethodReference.
	pathFinder changed: #label.
	^ pathFinder