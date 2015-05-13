testing
testRecordMultipleRandoms

	| result1 result2 |
	(SRecordReplayWrapper on: #atRandom inClass: Integer with: self cache) install.
	result1 := 10000 atRandom.
	result2 := 9999 atRandom.
	self assert: 10000 atRandom = result1.
	self assert: 9999 atRandom = result2.