state exploration
askForMethodStateOf: aMethodReference
	| arguments |
	arguments := self getArgumentsFrom: aMethodReference.
	^ (UIManager default 
		chooseFrom: arguments, {'return value'}
		values: (1 to: arguments size), {nil}
		lines: #() 
		title: 'Choose state to explore')