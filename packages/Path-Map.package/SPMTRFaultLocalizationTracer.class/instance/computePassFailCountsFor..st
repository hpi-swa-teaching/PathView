fault localization
computePassFailCountsFor: aMorph
	| coveringTests |	
	coveringTests := aMorph allCoveringTests.
	self failuresAtMethod: (self failuresFrom: coveringTests).
	self allFailures: (self failuresFrom: self testResults keys).
	self passedAtMethod: (coveringTests size - self failuresAtMethod).
	self allPassed: (self testResults keys size - self allFailures).