testing
test02TypeBucket
	self assert: self project typesBucket isNil.
	self runInductiveAnalysisWith: STypeHarvester.
	self assert: self project valueRangeBucket isNil.
	self assert: self project typesBucket notNil.
	self assert: (self project typesBucket class inheritsFrom: STypeBucket)