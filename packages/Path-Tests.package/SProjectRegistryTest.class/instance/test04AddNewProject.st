tests
test04AddNewProject
	| project |
	project := SProject name: #myProject categories: #(#'DontExists').
	self assert: (SProject projectAt: #myProject) isNil.
	SProject addProject: project.
	self assert: (SProject projectAt: #myProject) notNil.	