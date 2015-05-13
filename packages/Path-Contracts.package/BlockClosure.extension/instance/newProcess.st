*Path-Contracts-override
newProcess
	"Answer a Process running the code in the receiver. The process is not 
	scheduled."
	| process |
	<primitive: 19> "Simulation guard"
	process := Process
		forContext: 
			[self value.
			Processor terminateActive] asContext
		priority: Processor activePriority.
	process contractExecutionPolicy: Processor activeProcess contractExecutionPolicy.
	^ process