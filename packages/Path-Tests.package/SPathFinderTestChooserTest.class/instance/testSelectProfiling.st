testing
testSelectProfiling

	self assert: self getTestModel tracer profilingMode == #normal.
	self getTestModel normalRunWithCounts.
	self assert: self getTestModel tracer profilingMode == #counts.
	self getTestModel profileRunWithMs.
	self assert: self getTestModel tracer profilingMode == #ms.
	self getTestModel profileRunWithPercentage.
	self assert: self getTestModel tracer profilingMode == #%.