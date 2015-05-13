testing
test07bTreeMapCreationCategoryMorph
	| rootMorph categoryMorph | 
	rootMorph := self testRunner findA: SPMRootMorph.
	categoryMorph := rootMorph submorphNamed: 'Path-Tests-Sandbox'.
	self assert: categoryMorph notNil. 
	self assert: categoryMorph sourceCodeEntity =  #'Path-Tests-Sandbox'.
	categoryMorph childrenMorphs do: [:each | 
		self assert: each sourceCodeEntity isBehavior]