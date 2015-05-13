fault localization
runTests: aCollectionOfTests forAnalyzing: aWrapper
	aCollectionOfTests 
		do: [:each | aWrapper currentTest: each.
				     each execute] 
		displayingProgress: [:each | self displayTest: each from: aCollectionOfTests size]