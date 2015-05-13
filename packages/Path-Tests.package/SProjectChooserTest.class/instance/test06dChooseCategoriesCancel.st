testing
test06dChooseCategoriesCancel
	| categoryChooser |
	self projectChooser selectedProject: (SProject projectAt: #observerExample). 
	categoryChooser := self projectChooser chooseCategories.
	categoryChooser selectAll.
	categoryChooser cancel.
	self assert: self projectChooser selectedCategoriesOfProject size = 2.