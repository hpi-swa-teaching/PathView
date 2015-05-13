testing
test06bChooseCategoriesInverse
	| categoryChooser |
	self projectChooser selectedProject: (SProject projectAt: #observerExample). 
	categoryChooser := self projectChooser chooseCategories.
	categoryChooser selectInverse.
	categoryChooser ok.
	self assert: self projectChooser selectedCategoriesOfProject size > 100.
	self deny: (self projectChooser selectedCategoriesOfProject 
					includes: #'Path-Dev-Example-Observer').