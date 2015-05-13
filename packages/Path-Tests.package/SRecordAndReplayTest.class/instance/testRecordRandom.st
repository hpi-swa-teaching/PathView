testing
testRecordRandom

	| result |
	(SRecordReplayWrapper on: #atRandom inClass: Integer with: self cache) install.
	result := 10000 atRandom.
	self assert: 10000 atRandom = result.