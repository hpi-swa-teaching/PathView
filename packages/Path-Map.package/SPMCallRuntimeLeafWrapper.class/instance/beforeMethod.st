evaluating
beforeMethod

	super beforeMethod.
	self tracer before: self asMethodReference process: Processor activeProcess.