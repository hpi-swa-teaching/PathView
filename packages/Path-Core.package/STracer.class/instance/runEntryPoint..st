running
runEntryPoint: anEntryPoint
	| result |
	self beginExecutionOf: anEntryPoint.
	self startTracing.
	result := anEntryPoint execute.
	self stopTracing.
	self endExecutionOf: anEntryPoint withResult: result.