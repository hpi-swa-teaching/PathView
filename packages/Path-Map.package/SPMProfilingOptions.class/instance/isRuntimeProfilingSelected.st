spec commands
isRuntimeProfilingSelected
	^ (self kindOfProfiling == #runtime) or: [self kindOfProfiling == #runtimePerCall]