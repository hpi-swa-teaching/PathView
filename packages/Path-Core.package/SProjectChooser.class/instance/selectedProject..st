project commands
selectedProject: aProject

	selectedProject := aProject.
	self 
		changed: #isProjectSelected;
		changed: #selectedCategoriesOfProject.