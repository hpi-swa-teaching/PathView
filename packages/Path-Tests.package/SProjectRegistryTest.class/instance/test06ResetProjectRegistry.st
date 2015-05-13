tests
test06ResetProjectRegistry

	SProject addPredefinedProjects.
	SProject reset.
	self assert: SProject projectRegistry isEmpty.