*Path-Contracts
forkWithContracts: activeGroups
	| process policy |
	process := self newProcess.
	policy := SExecutionPolicy executionEnabled.
	policy activeGroups: activeGroups.
	process 
		contractExecutionPolicy: policy;
		name: 'Contract Execution: ', self outerContext asString;
		priority: Processor userBackgroundPriority.
	^ process resume