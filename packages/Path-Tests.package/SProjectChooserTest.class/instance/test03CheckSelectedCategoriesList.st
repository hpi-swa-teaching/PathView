testing
test03CheckSelectedCategoriesList
	self assert: self projectChooser selectedCategoriesOfProject isEmpty.
	self projectChooser selectedProject: (SProject projectAt: #observerExample).
	self assert: self projectChooser selectedCategoriesOfProject =  
		#(#'Path-Dev-Example-Observer' #'Path-Dev-Example-Observer-Tests').