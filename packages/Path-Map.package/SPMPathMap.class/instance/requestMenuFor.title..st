menu
requestMenuFor: aCollection title: aString
	^ UIManager default 
		chooseFrom: (aCollection collect: [:each | each value])
		values: (aCollection collect: [:each | each key])
		lines: #() 
		title: aString