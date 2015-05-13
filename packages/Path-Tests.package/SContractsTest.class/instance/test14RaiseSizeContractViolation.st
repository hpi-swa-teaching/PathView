testing
test14RaiseSizeContractViolation

	self shouldnt: [SSBClassD new myValue2: #(1 2 3)] runWithContracts 
		raise: SContractViolation.
	self should: [[SSBClassD new myValue2: #(1 2 3 4)] runWithContracts] 
		raise: SSizeContractViolation.
	[[SSBClassD new myValue2: #(1 2 3 4)] runWithContracts] 
		on: SSizeContractViolation 
		do: [:violation | 
			self 
				assert: violation description = 'Size violation (Size: 4 > 3 elements) precondition of anObject fails in SSBClassD myValue2:';
				assert: violation shortDescription = 'Pre in anObject: Size violation >> 4 > 3'.].