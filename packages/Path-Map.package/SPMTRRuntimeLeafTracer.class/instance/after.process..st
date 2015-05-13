wrapper events
after: aMethodReference process: aProcess
	| stack pastRuntime |
	stack := self stopwatches at: aProcess.
	stack last value suspend.
	stack last key = aMethodReference
		ifFalse: [^ self error: 'Should not happen!'].	
	pastRuntime := self runtimes at: aMethodReference ifAbsentPut: [Duration zero].
	self runtimes at: aMethodReference put: pastRuntime + stack last value duration.
	stack removeLast.
	stack ifNotEmpty: [stack last value activate].