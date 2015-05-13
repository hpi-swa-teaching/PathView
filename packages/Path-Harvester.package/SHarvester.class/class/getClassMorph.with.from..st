pathMap-helper
getClassMorph: aClass with: aColor from: aPathMap
	| morph |
	morph := aPathMap getClassMorph: aClass.
	morph ifNotNil: [morph propagateColor: aColor].	
	^ morph