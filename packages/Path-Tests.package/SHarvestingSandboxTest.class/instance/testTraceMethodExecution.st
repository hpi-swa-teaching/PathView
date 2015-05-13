testing
testTraceMethodExecution

	self assert: (SHClassA new sayHelloTo: 'world') = 'Hello world!'
	