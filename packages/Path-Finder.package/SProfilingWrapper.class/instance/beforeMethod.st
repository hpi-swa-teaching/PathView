evaluating
beforeMethod

	super beforeMethod.
	self stopwatches add: Stopwatch new.
	self stopwatches last activate.