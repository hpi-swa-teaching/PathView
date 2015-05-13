accessing
findPathfinderFor: anAssociation
	| pathFinderMorph |
	pathFinderMorph := World findDeepSubmorphThat: [:each | 
		(each class = PluggableSystemWindow and: 
			[each model isKindOf: SPathFinder]) and: 
			[(each label = ('PathFinder: ', 
							anAssociation key asString, ' ', anAssociation value asString))]]
		 ifAbsent: nil.
	self assert: pathFinderMorph notNil.
	^ pathFinderMorph