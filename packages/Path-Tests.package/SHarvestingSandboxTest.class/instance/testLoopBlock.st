testing
testLoopBlock

	| number |
	number := 1.
	2 timesRepeat: [number := SHClassA new addValueToA: number].
	self assert: number = 3.	