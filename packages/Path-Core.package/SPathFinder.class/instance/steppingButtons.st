building-custom-morphs
steppingButtons

	^	{
		{ UiFugueIcons arrowStepOverIcon.  #stepOver. 'step over'. #stepOverButtonEnabled}.
		{ UiFugueIcons arrowStepIcon. #stepInto. 'step into'. #stepIntoButtonEnabled}.
		{ UiFugueIcons arrowTurn090LeftIcon. #stepReturn. 'step return'. #stepReturnButtonEnabled}.
		{ UiFugueIcons arrowStepOverIcon flipBy: #horizontal centerAt: 8@8. #stepBack. 'step back'. #stepBackButtonEnabled}.
		{ UiFugueIcons arrowTurn090Icon. #stepToSender. 'step to sender'. #stepToSenderButtonEnabled}.
		}.