*Path-Contracts
forkWithoutContracts
	| process |
	process := self newProcess.
	process contractExecutionPolicy: SExecutionPolicy executionDisabled.
	^ process resume