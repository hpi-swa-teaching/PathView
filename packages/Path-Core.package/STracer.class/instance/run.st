public api
run
	| begin |
	[self preProcessing.
	begin := DateAndTime now.
	self
		createWrappers;
		runEntryPoints] 
	ensure: [self removeWrappers].
	Transcript show: DateAndTime now - begin; cr.
	self postProcessing.