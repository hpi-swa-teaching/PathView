testing
test07cTreeMapCreationClassAndMethodMorphs
	| rootMorph classMorph | 
	rootMorph := self testRunner findA: SPMRootMorph.
	classMorph := (rootMorph childrenMorphs at: #'Path-Tests-Sandbox')
						submorphNamed: 'SSBClassA'.
	self 
		assert: classMorph notNil;
		assert: classMorph childrenMorphs size = 1.
	(classMorph childrenMorphs at: #'no category') traverseAllChildsAndDo: [:each | 
		self assert: (classMorph sourceCodeEntity >> each sourceCodeEntity) 
			isCompiledMethod].