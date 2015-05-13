comparing
= anObject
	anObject == self ifTrue: [^ true].
	anObject class = self class ifFalse: [^ false].
	^ (anObject constantValue = self constantValue)
		and: [anObject nilAllowed = self nilAllowed]