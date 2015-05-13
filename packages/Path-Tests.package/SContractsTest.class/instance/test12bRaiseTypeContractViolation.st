testing
test12bRaiseTypeContractViolation
	| d |
	d := SSBClassD new.
	d myValue: (Dictionary newFrom: {1->#abc}).
	self shouldnt: [d myValue] runWithContracts raise: SContractViolation.
	d myValue: (Dictionary newFrom: {#abc->#abc}).
	self should: [[d myValue] runWithContracts] raise: STypeContractViolation.
	d myValue: (Dictionary newFrom: {1->1}).
	self should: [[d myValue] runWithContracts] raise: STypeContractViolation.