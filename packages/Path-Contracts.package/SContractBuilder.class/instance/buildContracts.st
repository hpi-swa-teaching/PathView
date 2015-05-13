building
buildContracts
	self typeInfo 
		ifNotNil: [self 
					printSourceLine: '"Type Contracts"';
					buildTypeContracts].
	self valueRangeInfo
		ifNotNil: [self 
					printSourceLine: '"Value Range Contracts"';
					buildValueRangeContracts].