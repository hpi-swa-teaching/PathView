instance creation
on: aProject pathMap: aPathMap tests: aSymbol
	^ (self on: aProject entryPoints: (STestCaseEntryPoint 
										convertTestSuite: (aPathMap testRunner 
																perform: aSymbol)))
		pathMap: aPathMap;
		yourself