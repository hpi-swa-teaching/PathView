visualization-runtime
collectRuntimeFromAllMethods
	| runtimeDict previousDuration |
	runtimeDict := Dictionary new.
	self testResults valuesDo: [:methods | 
		methods associationsDo: [:each |
			previousDuration := runtimeDict at: each key ifAbsent: Duration zero.
			runtimeDict at: each key put: each value + previousDuration]].
	^ runtimeDict