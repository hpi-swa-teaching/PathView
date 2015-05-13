testing
testTraceMethodExecutionWithCondition

	| str |
	'1' = 1 asString
		ifTrue: [str := SHClassA new sayHelloTo: 'world']
		ifFalse: [str := 'Germany'].
	self assert: str = 'Hello world!'.
	