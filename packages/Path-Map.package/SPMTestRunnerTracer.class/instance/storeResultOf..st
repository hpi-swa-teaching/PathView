results
storeResultOf: anEntryPoint
	self testResults 
			at: anEntryPoint 
			put: (Dictionary new 
					at: anEntryPoint asMethodReference put: nil;
					yourself).