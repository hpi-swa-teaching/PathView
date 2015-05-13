testing
test05PathFinderSingleTestCase
	| menuMorph methodMorph pathFinder |
	methodMorph := self methodMorph: (MethodReference 
											class: SSBTest selector: #testDoNothing).
	menuMorph := self activateMenuFor: methodMorph.
	self pushButton: #rerunTest on: menuMorph.
	self pushButton: #pathfinderMethod on: menuMorph.
	pathFinder := World findDeepSubmorphThat: [:each | 
		(each class = PluggableSystemWindow and: 
			[each model isKindOf: SPathFinder]) and: 
			[(each label =  'PathFinder: SSBTest testDoNothing')]] ifAbsent: nil.
	self assert: pathFinder notNil.
	pathFinder abandon.