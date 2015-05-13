actions
runAllWithContracts
	| violations |
	violations := Dictionary new.
	[[self runAll] runWithContracts: self pathMap project projectName]
		on: SContractViolation
		do: [:exception | (violations 
							at: exception methodReference
							ifAbsentPut: [Bag new]) add: exception.		
						exception resume].
	self pathMap 
		violations: violations;
		addViolations.