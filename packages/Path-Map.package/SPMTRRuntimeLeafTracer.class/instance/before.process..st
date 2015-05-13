wrapper events
before: aMethodReference process: aProcess
	| stack |
	stack := self stopwatches at: aProcess ifAbsentPut: [OrderedCollection new].
	stack ifNotEmpty: [stack last value suspend].
	stack add: aMethodReference -> Stopwatch new activate.