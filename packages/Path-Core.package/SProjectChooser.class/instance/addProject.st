project commands
addProject
	| projectName |
	projectName := testMode
		ifTrue: ['PathTestProject']
		ifFalse: [UIManager default request: 'Insert new project name' initialAnswer: ''].
	(projectName notNil and: [projectName notEmpty])
		ifTrue: [
			projectName := projectName asSymbol.
			(SProject projectAt: projectName) 
				ifNotNil: [^ self inform: 'Project name already exists.'].
			selectedProject := SProject 
									projectAt: projectName 
									put: (SProject name: projectName categories: #())].
	self 
		changed: #allRegisteredProjects;
		changed: #selectedProject;
		changed: #selectedCategoriesOfProject.