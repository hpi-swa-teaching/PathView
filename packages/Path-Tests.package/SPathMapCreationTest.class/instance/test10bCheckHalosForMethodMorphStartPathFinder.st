testing
test10bCheckHalosForMethodMorphStartPathFinder
	| methodMorph menuMorph |
	methodMorph := self methodMorph: (MethodReference 
											class: SSBClassA selector: #initialize).
	menuMorph := self activateMenuFor: methodMorph.
	[self pushButton: #pathfinderMethod on: menuMorph] 
		on: ProvideAnswerNotification
		do: [: notification | self assert: notification messageText = 
							'No covering test found.'].
