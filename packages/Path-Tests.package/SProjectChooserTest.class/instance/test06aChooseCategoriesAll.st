testing
test06aChooseCategoriesAll
	| categoryChooser |
	self projectChooser selectedProject: (SProject projectAt: #observerExample). 
	categoryChooser := self projectChooser chooseCategories.
	categoryChooser selectAll.
	categoryChooser ok.
	self assert: self projectChooser selectedCategoriesOfProject size > 100.