*Path-Contracts
runWithContracts: activeGroups
	| policy oldPolicy |
	oldPolicy := Processor activeProcess contractExecutionPolicy.
	policy := SExecutionPolicy executionEnabled activeGroups: activeGroups.
	Processor activeProcess contractExecutionPolicy: policy.
	^ self ensure: [Processor activeProcess contractExecutionPolicy: oldPolicy]