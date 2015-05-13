testing
test04bDebugSingleFailedTestCase
	| menuMorph methodMorph |
	methodMorph := self methodMorph: (MethodReference 
											class: SSBFaultLocalizationTest 
											selector: #testFailingMethodFault).
	menuMorph := self activateMenuFor: methodMorph.
	self pushButton: #rerunTest on: menuMorph.
	self should: [self pushButton: #debugMethod on: menuMorph] raise: TestFailure.