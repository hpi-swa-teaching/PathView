project tests
test03RemoveClassFromCache

	self project allClasses.
	self assert: (self project instVarNamed: 'classesCache') includes: Observer.
	self project removeFromClassesCache: Observer.
	self deny: (self project instVarNamed: 'classesCache') includes: Observer.
	