project commands
allRegisteredProjects

	^ SProject allProjectsWithoutNull asSortedCollection: [:a :b | 
		a projectName < b projectName]