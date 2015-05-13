testing
test16RaisePropertyContractViolation

	self shouldnt: [SSBClassD new myValue2: #(1 2)] runWithContracts 
		raise: SContractViolation.
	self should: [[SSBClassD new myValue2: #()] runWithContracts] 
		raise: SPropertyContractViolation.
	[[SSBClassD new myValue2: #()] runWithContracts] 
		on: SPropertyContractViolation 
		do: [:violation | 
			self 
				assert: violation description = 'Property violation (Expected to be not isEmpty) precondition of anObject fails in SSBClassD myValue2:';
				assert: violation shortDescription = 'Pre in anObject: Property violation >> Expected not isEmpty'.].