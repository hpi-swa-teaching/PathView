state exploration
chooseResult: aCollection
	^ (UIManager default 
		chooseFrom: aCollection 
		values: aCollection 
		lines: #() 
		title: 'Choose state to explore with PathFinder')