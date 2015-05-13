accessing
parentSourceCodeEntityClass

	^ (self parentMorph sourceCodeEntity includesSubString: ' (class)')
		ifTrue: [self parentMorph parentMorph sourceCodeEntity class]
		ifFalse: [self parentMorph parentMorph sourceCodeEntity]