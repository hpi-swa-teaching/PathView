test resources
initializeTestResourceOf: aTestClass
	aTestClass resources do: [:each |
		each isAvailable ifFalse: [each signalInitializationError]].