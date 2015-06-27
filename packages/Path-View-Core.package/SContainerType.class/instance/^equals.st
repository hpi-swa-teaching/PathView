comparing
= anObject
	anObject == self ifTrue: [^ true].
	anObject class = self class ifFalse: [^ false].
	^ (((anObject typeOfContainer = self typeOfContainer)
		and: [anObject typeOfElements = self typeOfElements]) 
		and: [anObject typeOfKeys = self typeOfKeys])