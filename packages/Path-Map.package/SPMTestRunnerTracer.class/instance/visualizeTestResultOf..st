visualization
visualizeTestResultOf: aTestCaseEntryPoint
	| morph |
	self globalOptions showTestResults ifFalse: [^ self].
	morph := self pathMap 
					getMethodMorph: aTestCaseEntryPoint testClass 
				    	and: aTestCaseEntryPoint selector.
	aTestCaseEntryPoint lastResult hasPassed
		ifTrue: [	morph propagateColor: Color green.
				self setAdditionalInfoWith: 'Result: Test passed' to: morph.].
	aTestCaseEntryPoint lastResult hasFailures
		ifTrue: [	morph propagateColor: Color yellow.
				self setAdditionalInfoWith: 'Result: Test failed - ', 
					(self failureDescriptionOf: aTestCaseEntryPoint) to: morph].
	aTestCaseEntryPoint lastResult hasErrors
		ifTrue: [	morph propagateColor: Color red.
				self setAdditionalInfoWith: 'Result: Test error - ', 
					(self failureDescriptionOf: aTestCaseEntryPoint) to: morph].