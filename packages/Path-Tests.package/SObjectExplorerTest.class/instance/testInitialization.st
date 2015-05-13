testing
testInitialization
	
	| callNode |
	callNode := self getNode: 12.
	self assert: callNode tracer == self tracer.
	self assert: callNode objects isEmpty.		