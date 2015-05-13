state exploration
askForStateOf: aClass

	^ (UIManager default 
		chooseFrom: {'self'}, aClass instVarNames 
		values: {nil}, aClass instVarNames 
		lines: #() 
		title: 'Choose state to explore')