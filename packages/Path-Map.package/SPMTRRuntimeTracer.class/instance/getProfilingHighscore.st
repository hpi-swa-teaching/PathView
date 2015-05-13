public api
getProfilingHighscore
	| highscore |
	highscore := OrderedCollection new.
	self options kindOfProfiling == #runtime
		ifTrue: [self collectRuntimeFromAllMethods	associationsDo: [:each | 
					highscore add: each value -> each key].]
		ifFalse: [self collectRuntimeAndCallsFromAllMethods associationsDo: [:each | 
					highscore add: (((each value second asNanoSeconds / 
										each value first) asFloat / 1000000) -> each key)].].
	^ highscore asSortedCollection: [:a :b | a key > b key]