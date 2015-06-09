layout and labels
createEntries
	
	^ (self klass organization listAtCategoryNamed: category)
		collect: [:each | 
			SMethodMorph on: klass in: classMorph forMethod: each ]