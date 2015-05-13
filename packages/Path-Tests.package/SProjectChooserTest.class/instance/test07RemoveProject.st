testing
test07RemoveProject
	self projectChooser selectedProject: (SProject projectAt: #observerExample). 
	self projectChooser removeSelectedProject.
	self assert: (SProject projectAt: #observerExample) isNil.