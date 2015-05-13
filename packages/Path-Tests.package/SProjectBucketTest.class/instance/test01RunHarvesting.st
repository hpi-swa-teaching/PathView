testing
test01RunHarvesting
	self assert: self project harvestedBuckets isEmpty.
	self runInductiveAnalysisWith: STypeHarvester.
	self assert: self project harvestedBuckets notEmpty.