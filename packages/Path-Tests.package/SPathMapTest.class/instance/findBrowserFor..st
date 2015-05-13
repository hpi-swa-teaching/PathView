accessing
findBrowserFor: anAssociation
	| browserMorph |
	browserMorph := World findDeepSubmorphThat: [:each | 
		(each class = PluggableSystemWindow and: 
		[each model isKindOf: Browser]) and: 
		[(each model selectedClassName = anAssociation key) and: 
			[each model selectedMessageName = anAssociation value]]] ifAbsent: nil.
	self assert: browserMorph notNil.
	^ browserMorph