results
failureDescriptionOf: aTestCaseEntryPoint
	^ (SwaTestExceptionRegistry 
		at: (aTestCaseEntryPoint testClass selector: aTestCaseEntryPoint selector) 
		ifAbsent: '') asString
