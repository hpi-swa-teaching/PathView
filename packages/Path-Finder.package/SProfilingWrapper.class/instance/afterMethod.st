evaluating
afterMethod

	| stopwatch |
	stopwatch := self stopwatches removeLast.
	stopwatch suspend.
	self tracer addProfileInformation:  stopwatch duration node: self ids last.
	super afterMethod.