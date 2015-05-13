instance creation
on: aProject pathMap: aPathMap harvester: aClass
	
	^ (self on: aProject pathMap: aPathMap tests: #suiteAll)
		harvester: (aClass forCategories: aProject categories);
		yourself