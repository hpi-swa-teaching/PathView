testing
test07dTreeMapCreationAllMorphsAreWhite
	| rootMorph | 
	rootMorph := self testRunner findA: SPMRootMorph.
	rootMorph allMorphsDo: [:each | 
		(each class inheritsFrom: SPMPathMapMorph)
			ifTrue: [self assert: each color = Color white]].