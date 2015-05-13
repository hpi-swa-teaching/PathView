tests
test05RemoveProject

	SProject addPredefinedProjects.
	SProject removeProjectAt: #observerExample.
	self assert: (SProject projectAt: #observerExample) isNil.