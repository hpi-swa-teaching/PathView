start tools
chooseTest: aCollectionOfTests

	^ UIManager default 
				chooseFrom: (aCollectionOfTests collect: [:each | each asStringOrText]) 
				values: aCollectionOfTests 
				lines: #() 
				title: 'Choose entry point'.