menu actions
debugMethodFromTest: aTestCaseEntryPoint
	| withContracts klass selector testRef |
	withContracts := self chooseWithOrWithoutContracts.
	testRef := aTestCaseEntryPoint asMethodReference.
	klass := self parentSourceCodeEntityClass.
	selector := self sourceCodeEntity.
	
	"failing test cases should not be debugged with a break point 
	(the real failure should occur; as known from the standard test runner)"
	((testRef methodSymbol = selector 
		and: [testRef actualClass includesBehavior: klass])
			and: [(aTestCaseEntryPoint lastResult hasFailures 
				or: [aTestCaseEntryPoint lastResult hasErrors])])
					ifTrue: [^ self run: [aTestCaseEntryPoint debug] 
									withContracts: withContracts].
	
	"If the debugged method includes contract violations, no break should be insert. 	Otherwise the break point mechanism will replace the contracts"
	[(withContracts and: [self hasContractViolations])
		ifFalse: [SBreakpointManager installInClass: klass selector: selector].
	self run: [testRef actualClass run: testRef methodSymbol] 
		withContracts: withContracts] 
			ensure: [(withContracts and: [self hasContractViolations])
						ifFalse: [SBreakpointManager unInstall:  klass >> selector]].