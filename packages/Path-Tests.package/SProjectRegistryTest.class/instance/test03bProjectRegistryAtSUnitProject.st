tests
test03bProjectRegistryAtSUnitProject
	| project |
	SProject addPredefinedProjects.
	project := SProject projectAt: #sunit.
	self assert: project notNil.
	self assert: project projectName == #sunit.
	self assert: project categories = #(#'SUnit-Extensions' #'SUnit-Kernel' #'SUnit-Tests')