testing
test04SetCurrentProject
	self projectChooser selectedProject: (SProject projectAt: #observerExample). 
	self projectChooser selectCurrentProject.
	self assert: self projectChooser selectedProject asString = 
		'observerExample <current>'.
	self assert: self projectChooser selectedCategoriesOfProject =  
		#(#'Path-Dev-Example-Observer' #'Path-Dev-Example-Observer-Tests').