public api
getLocalizedMethodMorphsWithoutTests
	| morphs |
	morphs := OrderedCollection new.
	self pathMap rootMorph traverseAllChildsAndDo: [:each |
		(((each class == SPMMethodMorph) 
		and: [(each color = Color white) not]) 
		and: [each isSourceCodeEntityATestMethod not])
			ifTrue: [morphs add: each]].
	^ morphs