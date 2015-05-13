testing
test03ValueRangeBucket
	self assert: self project typesBucket isNil.
	self runInductiveAnalysisWith: SValueRangeHarvester.
	self assert: self project typesBucket isNil.
	self assert: self project valueRangeBucket notNil.
	self assert: (self project valueRangeBucket class == SValueRangeBucket)