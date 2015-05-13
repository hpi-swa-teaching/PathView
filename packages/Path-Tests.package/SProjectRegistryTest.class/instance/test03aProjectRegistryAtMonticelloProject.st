tests
test03aProjectRegistryAtMonticelloProject
	| project |
	SProject addPredefinedProjects.
	project := SProject projectAt: #monticello.
	self assert: project notNil.
	self assert: project projectName == #monticello.
	self assert: project categories = #(#'Monticello-Base' #'Monticello-Chunk Format' #'Monticello-Loading' #'Monticello-Merging' #'Monticello-Modeling' #'Monticello-Patching' #'Monticello-Repositories' #'Monticello-Storing' #'Monticello-UI' #'Monticello-Versioning' #'Tests-Monticello' #'Tests-Monticello-Mocks').