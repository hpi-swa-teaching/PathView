project commands
selectCurrentProject
	selectedProject 
		ifNil: [SProject setNullProjectAsCurrent]
		ifNotNil: [SProject setCurrentProject: selectedProject].
	SProject current resetClassesCache.
	self changed: #allRegisteredProjects.