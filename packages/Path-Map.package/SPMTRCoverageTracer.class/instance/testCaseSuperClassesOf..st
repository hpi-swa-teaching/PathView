ignore setup/tearDown Code
testCaseSuperClassesOf: aTestCaseEntryPoint

	^ (aTestCaseEntryPoint asMethodReference actualClass allSuperclasses) 
		addFirst: aTestCaseEntryPoint asMethodReference actualClass;
		removeLast; "TestCase"
		removeLast; "Object"
		removeLast; "ProtoObject"
		yourself.