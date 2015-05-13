private
openWithPerformanceMeasureOn: aTestMethodReference
	| pathFinder swFindNode |
	swFindNode := Stopwatch new.
	pathFinder := self new.
	ToolBuilder open: pathFinder.
	pathFinder testChooserModel setCurrentTest: aTestMethodReference.
	swFindNode activate.
	(pathFinder callTreeModel tracer getNode: (pathFinder callTreeModel tracer currentId / 2) asInteger) setAsCurrentSelection.
	swFindNode suspend.
	pathFinder windowMorph abandon.
	^ swFindNode duration asMilliSeconds