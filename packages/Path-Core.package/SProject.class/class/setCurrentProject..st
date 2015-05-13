projects
setCurrentProject: aProject
	CurrentProject := aProject.
	CurrentProject ifNotNil: [CurrentProject resetClassesCache].
	SwaTestExceptionRegistry reset.