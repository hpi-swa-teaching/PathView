*Path-Contracts
runWithoutContracts
	| oldPolicy |
	oldPolicy := Processor activeProcess contractExecutionPolicy.
	Processor activeProcess contractExecutionPolicy: SExecutionPolicy executionDisabled.
	^ self ensure: [Processor activeProcess contractExecutionPolicy: oldPolicy]