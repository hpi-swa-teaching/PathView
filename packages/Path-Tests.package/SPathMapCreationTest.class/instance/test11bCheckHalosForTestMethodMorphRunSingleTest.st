testing
test11bCheckHalosForTestMethodMorphRunSingleTest
	| methodMorph menuMorph |
	methodMorph := self methodMorph: (MethodReference 
											class: SSBTest selector: #testDoNothing).
	menuMorph := self activateMenuFor: methodMorph.
	self pushButton: #rerunTest on: menuMorph.
	self checkTestResults: '1 run, 1 passes, 0 expected failures, 0 failures, 0 errors, 0 unexpected passes'.