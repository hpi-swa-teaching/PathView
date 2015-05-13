testing
test04aDebugSinglePassedTestCase
	| menuMorph methodMorph |
	self assert: SBreakpointManager installedNodes isEmpty.
	methodMorph := self methodMorph: (MethodReference 
											class: SSBTest selector: #testDoNothing).
	menuMorph := self activateMenuFor: methodMorph.
	self pushButton: #rerunTest on: menuMorph.
	self should: [self pushButton: #debugMethod on: menuMorph] raise: BreakPoint.