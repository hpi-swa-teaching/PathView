testing
test06cChooseCategoriesNone
	| categoryChooser |
	self projectChooser selectedProject: (SProject projectAt: #observerExample). 
	categoryChooser := self projectChooser chooseCategories.
	categoryChooser selectNone.
	categoryChooser ok.
	self assert: self projectChooser selectedCategoriesOfProject isEmpty.