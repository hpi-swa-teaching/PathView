start tools
createPathView
	| project |
	project := SMultipleChoiceRequest
		prompt: 'Create a view in which project?'
		labels: SProject allProjectNames
		values: SProject allProjects.
	project ifNil: [^ self].
	SProject setCurrentProject: project.
	SPathView openOn: self selectedClass.
