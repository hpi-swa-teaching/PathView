testing
test15RaiseRangeContractViolation

	self shouldnt: [SSBClassD new myValue: 1] runWithContracts 
		raise: SContractViolation.
	self should: [[SSBClassD new myValue: -1] runWithContracts] 
		raise: SRangeContractViolation.
	[[SSBClassD new myValue: -1] runWithContracts] 
		on: SRangeContractViolation 
		do: [:violation | 
			self 
				assert: violation description = 'Range violation (-1 not between 0 and 10) precondition of anObject fails in SSBClassD myValue:';
				assert: violation shortDescription = 'Pre in anObject: Range violation >> -1 not between 0 and 10'.].