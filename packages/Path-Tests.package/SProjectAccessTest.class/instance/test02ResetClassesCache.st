project tests
test02ResetClassesCache

	self assert: (self project instVarNamed: 'classesCache') isNil.
	self project allClasses.
	self assert: (self project instVarNamed: 'classesCache') notNil.
	self project resetClassesCache.
	self assert: (self project instVarNamed: 'classesCache') isNil.	