run tracer
runTests: aSymbol withTracer:  aClass
	self tracer: (aClass on: self project pathMap: self tests: aSymbol).
	self tracer run.