project commands
removeSelectedProject

	SProject removeProjectAt: selectedProject projectName.
	selectedProject := SProject current.
	self 
		changed: #allRegisteredProjects;
		changed: #selectedProject;
		changed: #selectedCategoriesOfProject.