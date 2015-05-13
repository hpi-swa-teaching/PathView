testing
test08ResetProjectCache
	| observerProject |
	observerProject := SProject projectAt: #observerExample.
	observerProject allClasses.
	self assert: (observerProject instVarNamed: 'classesCache') notNil.
	self projectChooser selectedProject: observerProject. 
	self projectChooser resetCacheOfSelectedProject.
	self assert: (observerProject instVarNamed: 'classesCache') isNil.
	