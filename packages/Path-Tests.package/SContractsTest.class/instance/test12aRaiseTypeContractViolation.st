testing
test12aRaiseTypeContractViolation

	self shouldnt: [SSBClassA new + 5 = 5] runWithContracts raise: SContractViolation.
	self should: [[SSBClassA new + '5'] runWithContracts] raise: STypeContractViolation.
	[[SSBClassA new + '5'] runWithContracts] 
		on: STypeContractViolation 
		do: [:violation | 
			self 
				assert: violation description = 'Type violation (Given: ByteString Expected: Number) precondition of aValue fails in SSBClassA +';
				assert: violation shortDescription = 'Pre in aValue: Type violation >> ByteString != Number'.].