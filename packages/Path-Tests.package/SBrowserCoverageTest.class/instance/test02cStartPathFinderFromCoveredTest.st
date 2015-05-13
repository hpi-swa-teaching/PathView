testing
test02cStartPathFinderFromCoveredTest
	| pathFinder |
	[pathFinder := self browser 
		setClass: SAnalogClock selector: #draw;
		testMode: #openPathFinderOn:;
		coverageListIndex: 1.
	self assert: pathFinder notNil.
	self assert: pathFinder callTreeModel rootNode clientSelector = #testRun.
	self assert: pathFinder callTreeModel selectedItem clientClass = SAnalogClock.	
	self assert: pathFinder callTreeModel selectedItem clientSelector = #draw]
		ensure: [pathFinder ifNotNil: [pathFinder windowMorph abandon]].