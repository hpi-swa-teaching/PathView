accessing-morphs
collectAllColorsFromMethods
	| morphs |
	morphs := self getAllMethodMorphs select: [:each | each color ~= Color white].
	^ morphs inject: Dictionary new into: [:dict :each | 
		dict 
			at: each methodReference put: each color; 
			yourself].
