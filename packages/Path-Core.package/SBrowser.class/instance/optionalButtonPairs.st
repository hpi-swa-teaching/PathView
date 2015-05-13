controls
optionalButtonPairs
	^ super optionalButtonPairs asOrderedCollection
			addLast: #('coverage' statementCoverage
				'Compute statement coverage provided by tests covering this method');
			addLast: #('path views' browseWithPathView
				'open PathViews with this class');
			yourself