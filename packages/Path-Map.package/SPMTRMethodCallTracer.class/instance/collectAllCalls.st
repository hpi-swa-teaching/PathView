visualization
collectAllCalls
	| callBag |
	callBag := Bag new.
	self testResults valuesDo: [:methods | 
		methods associationsDo: [:each | callBag add: each key withOccurrences: each value]].
	^ callBag