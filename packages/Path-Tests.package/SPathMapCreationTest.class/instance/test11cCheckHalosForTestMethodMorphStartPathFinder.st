testing
test11cCheckHalosForTestMethodMorphStartPathFinder
	| methodMorph menuMorph |
	methodMorph := self methodMorph: (MethodReference 
											class: SSBTest selector: #testDoNothing).
	menuMorph := self activateMenuFor: methodMorph.
	[self pushButton: #pathfinderMethod on: menuMorph] 
		on: ProvideAnswerNotification
		do: [: notification | self assert: notification messageText = 
							'No covering test found.'].