testing
test05VisualizeIntermediatedSteps
	| runTimeWithIntermediate start |
	start := DateAndTime now.
	self 
		analyzeTestQuality;
		runAllTests.
	runTimeWithIntermediate := DateAndTime now - start.
	self options switchVisualizeIntermediateSteps.
	start := DateAndTime now.
	self 
		analyzeTestQuality;
		runAllTests.
	self assert: runTimeWithIntermediate > (DateAndTime now - start).	