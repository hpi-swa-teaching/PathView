explore buttons
createExploreButtonsForArgumentsAt: aNumber
	| arguments |
	self callNode numArgsOfMethod isZero ifTrue: [^ aNumber].
	arguments := self getArgumentsFromSource: 
					self callNode methodReference sourceCode.
	self createMultipleArgumentsButton: arguments at: aNumber.
	^ aNumber - self class buttonHeight