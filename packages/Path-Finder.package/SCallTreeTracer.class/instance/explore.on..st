specific runs
explore: aSymbol on: aCallNode

	| instVars |
	instVars := self runTestWithSpecificWrapper: (self createExploreWrapper: aSymbol on: aCallNode).
	^ instVars objects