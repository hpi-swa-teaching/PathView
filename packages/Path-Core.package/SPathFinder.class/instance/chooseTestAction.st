actions
chooseTestAction
	^ UIManager default 
				chooseFrom: {'Rerun current test'. 'Choose new test'}
				values: {#rerun. #newTest}
				lines: #() 
				title: 'Choose test action'

	