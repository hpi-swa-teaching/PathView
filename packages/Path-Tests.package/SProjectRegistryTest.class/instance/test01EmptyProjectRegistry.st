tests
test01EmptyProjectRegistry

	self assert: SProject projectRegistry isEmpty.
	self assert: SProject allProjects isEmpty.
	self assert: SProject allProjectNames isEmpty.