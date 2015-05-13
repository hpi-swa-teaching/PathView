layout and labels
createEntries
	
	^ self categories
		collect: [ :each | SMethodCategoryMorph on: klass in: classMorph forCategory: each ]