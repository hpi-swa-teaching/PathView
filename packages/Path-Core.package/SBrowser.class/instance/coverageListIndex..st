coverage list
coverageListIndex: anInteger
	| testReference choice |
	anInteger <= 0 ifTrue: [^ self].
	testReference := self cacheCoverage at: anInteger.
	choice := testMode 
		ifNil: [(UIManager default 
				chooseFrom: {'PathFinder'. 'Debugger'. 'Browser'} 
				values: {#openPathFinderOn:. #openDebuggerOn:. #openBrowserOn:} 
				lines: #() 
				title: 'Choose tool')]
		ifNotNil: [testMode].		
	choice
		ifNotNil: [^ self perform: choice with: testReference asMethodReference].
	