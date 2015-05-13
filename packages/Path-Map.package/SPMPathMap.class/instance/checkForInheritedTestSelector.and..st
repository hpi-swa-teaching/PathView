accessing-morphs
checkForInheritedTestSelector: aClass and: aMethodSymbol
	^ (aClass isTestCaseClass and: 
		[aMethodSymbol isTestSelector]) and: 
			[(aClass testSelectors includes: aMethodSymbol) not]