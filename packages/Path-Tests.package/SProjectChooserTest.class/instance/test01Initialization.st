testing
test01Initialization
	| morph | 
	self assert: self projectChooser selectedProject projectName = #null.
	morph := self projectChooser windowMorph.
	self assert: morph label = 'PathProjects'.
	self assert: morph paneMorphs size = 3.
	self assert: (morph paneMorphs collect: [:each | each knownName]) = 
		 #('selectedCategoriesList' 'projectList' nil).
	self assert: (morph allSubmorphsOfKind: PluggableButtonMorphPlus) size = 5.