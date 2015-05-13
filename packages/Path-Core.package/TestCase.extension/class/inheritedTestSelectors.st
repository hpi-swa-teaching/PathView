*Path-Core
inheritedTestSelectors
	^ self shouldInheritSelectors
		ifTrue: [self allTestSelectors]
		ifFalse: [self testSelectors ]