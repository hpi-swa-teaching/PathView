coverage list
coverageList
	| coveredTests method |
	self refreshRequired ifFalse: [^ self cacheCoverage].
	method := self selectedMethodReference.
	method 
		ifNotNil: [coveredTests := self coveredTestsSortedFor: method.
				 self cacheCoverage: coveredTests].
	^ self cacheCoverage