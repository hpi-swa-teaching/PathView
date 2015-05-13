testing
test17RaiseNilContractViolation

	self shouldnt: [SSBClassD new myValue: true] runWithContracts 
		raise: SContractViolation.
	self should: [[SSBClassD new myValue: nil] runWithContracts] 
		raise: SNilContractViolation.
	[[SSBClassD new myValue: nil] runWithContracts] 
		on: SNilContractViolation 
		do: [:violation | 
			self 
				assert: violation description = 'Nil violation (precondition of anObject) in SSBClassD myValue:';
				assert: violation shortDescription = 'Pre in anObject: Nil violation'.].