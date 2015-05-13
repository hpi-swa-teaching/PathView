testing
test04BothBuckets
	self runInductiveAnalysisWith: STypeHarvester.
	self runInductiveAnalysisWith: SValueRangeHarvester.
	self assert: self project typesBucket notNil.
	self assert: self project valueRangeBucket notNil.