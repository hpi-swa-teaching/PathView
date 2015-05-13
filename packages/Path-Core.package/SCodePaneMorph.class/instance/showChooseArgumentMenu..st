explore actions
showChooseArgumentMenu: aCollection

	| choice |
	choice := UIManager default 
				chooseFrom: aCollection 
					values: (1 to: aCollection size) 
					lines: #() 
					title: 'Choose argument'.
	choice ifNotNil: [self showObjectExploration: #arguments title: (aCollection at: choice) objectIndex: choice].