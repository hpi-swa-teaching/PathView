coverage events
numberOfCoveredByteCodesFrom: aMethodReference
	 ^ ((self testResults values asOrderedCollection 
			add: self coveredMethods;
			yourself) 
		inject: Set new into: [:set :each | 
			(each at: aMethodReference ifAbsent: [nil])
				ifNil: [set]
				ifNotNil: [:coveredSet | set := set, coveredSet]]) size


