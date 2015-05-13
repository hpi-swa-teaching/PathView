actions
chooseNewTest
	self testChooserModel	setCurrentTest: 
		(UIManager default 
				chooseFrom: (SProject current allTests collect: [:each | each asString])
				values: SProject current allTests
				lines: #() 
				title: 'Choose Test Case') 