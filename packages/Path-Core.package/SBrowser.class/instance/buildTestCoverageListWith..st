toolbuilder
buildTestCoverageListWith: builder
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self;
		name: #testCoverage;
		list: #coverageList;
		setIndex: #coverageListIndex:.
	^listSpec