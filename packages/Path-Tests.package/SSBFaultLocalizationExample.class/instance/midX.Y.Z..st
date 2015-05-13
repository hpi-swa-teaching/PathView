computation
midX: firstNumber Y: secondNumber Z: thirdNumber
	self mid: thirdNumber.
	secondNumber < thirdNumber
		ifTrue: [firstNumber < secondNumber
					ifTrue: [self mid: secondNumber]
					ifFalse: [firstNumber < thirdNumber
								ifTrue: [self mid: secondNumber]]]
		ifFalse: [firstNumber > secondNumber
					ifTrue: [self mid: secondNumber]
					ifFalse: [firstNumber > thirdNumber
								ifTrue: [self mid: firstNumber]]]