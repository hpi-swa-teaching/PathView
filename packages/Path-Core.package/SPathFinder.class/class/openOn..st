instance creation
openOn: aTestMethodReference

	| pathFinder |
	pathFinder := self open.
	pathFinder testChooserModel setCurrentTest: aTestMethodReference.
	pathFinder changed: #label.
	^ pathFinder