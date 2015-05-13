testing
testGetCallWrapperClass

	self tracer profilingMode: #%.
	self assert: self tracer getCallWrapperClass == SProfilingWrapper.	
	self tracer profilingMode: #counts.
	self assert: self tracer getCallWrapperClass == SCallWrapper.
	self tracer profilingMode: #ms.
	self assert: self tracer getCallWrapperClass == SProfilingWrapper.	
	self tracer viewMode: #identities.
	self tracer profilingMode: #counts.
	self assert: self tracer getCallWrapperClass == SViewWrapper.		