testing
test02CheckProjectList
	self assert: self projectChooser allRegisteredProjects asSet = 
		SProject allProjectsWithoutNull asSet
