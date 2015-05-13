testing
testNextId

	self assert: self tracer currentId = -1.
	self assert: self tracer nextId = 0.
	self assert: self tracer currentId = 0.
	self assert: self tracer nextId = 1.