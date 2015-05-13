building
inheritedTestSelectors
	| klass |
	klass := self parentMorph sourceCodeEntity.
	^ (klass allTestSelectors reject: [:each | klass testSelectors includes: each]) 
		asOrderedCollection
		