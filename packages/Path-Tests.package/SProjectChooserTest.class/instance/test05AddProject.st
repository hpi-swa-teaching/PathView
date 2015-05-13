testing
test05AddProject
	self projectChooser addProject.
	self assert: self projectChooser selectedProject projectName = #PathTestProject.
	self assert: (SProject projectAt: #PathTestProject) notNil.
	self assert: self projectChooser selectedCategoriesOfProject isEmpty.