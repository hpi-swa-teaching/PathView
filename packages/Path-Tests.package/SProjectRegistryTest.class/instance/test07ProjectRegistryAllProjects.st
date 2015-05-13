tests
test07ProjectRegistryAllProjects
	SProject addPredefinedProjects.
	self assert: (SProject allProjects 
		collect: [:each | each projectName]) = 
	{#path. #sunit. #sandbox. #monticello. #null. #systemBrowser. #observerExample}.
	self assert: (SProject allProjectsWithoutNull 
		collect: [:each | each projectName]) =  
	{#path. #sunit. #sandbox. #monticello. #systemBrowser. #observerExample}.