public api
testSelectorsOfClass: aClass andConcern: aConcern
	^ ((self mapping at: aConcern) 
		select: [:each | each actualClass == aClass] 
		thenCollect: [:each | each methodSymbol]) asSortedCollection