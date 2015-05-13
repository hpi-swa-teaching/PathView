testing
test13RaiseSpellingContractViolation

	self shouldnt: [SSBClassD new myValue: 'correct'] runWithContracts 
		raise: SContractViolation.
	self should: [[SSBClassD new myValue: 'rwogn'] runWithContracts] 
		raise: SSpellingContractViolation.
	[[SSBClassD new myValue: 'rwogn'] runWithContracts] 
		on: SSpellingContractViolation 
		do: [:violation | 
			self 
				assert: violation description = 'Spelling violation (Spelling incorrect: rwogn) precondition of anObject fails in SSBClassD myValue:';
				assert: violation shortDescription = 'Pre in anObject: Spelling violation >> rwogn'.].