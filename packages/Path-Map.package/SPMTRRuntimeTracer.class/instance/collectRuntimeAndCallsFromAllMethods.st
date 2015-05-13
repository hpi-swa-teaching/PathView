visualization-ratio
collectRuntimeAndCallsFromAllMethods
	| callsAndRuntime previousValue |
	callsAndRuntime := Dictionary new.
	self testResults valuesDo: [:methods | 
		methods associationsDo: [:each | 
			previousValue := callsAndRuntime at: each key ifAbsent: {0. Duration zero}.
			callsAndRuntime 
				at: each key 
				put: {previousValue first + each value first.
					  previousValue second + each value second}]].
	^ callsAndRuntime