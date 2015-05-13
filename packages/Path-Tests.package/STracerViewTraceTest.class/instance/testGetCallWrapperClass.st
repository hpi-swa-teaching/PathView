testing
testGetCallWrapperClass

	self tracer viewMode: #objects.
	self assert: self tracer getCallWrapperClass == SViewWrapper.
	self tracer viewMode: #classes.
	self assert: self tracer getCallWrapperClass == SCallWrapper.	
	self tracer viewMode: #identities.
	self assert: self tracer getCallWrapperClass == SViewWrapper.
	self tracer profilingMode: #%.
	self assert: self tracer getCallWrapperClass == SProfilingWrapper.	
	self tracer profilingMode: #counts.
	self assert: self tracer getCallWrapperClass == SViewWrapper.