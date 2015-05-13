accessing-morphs
getAllMethodMorphs
	| morphs |
	morphs := OrderedCollection new.
	self rootMorph traverseAllChildsAndDo: [:each | 
		each isMethodMorph ifTrue: [morphs add: each]].
	^ morphs