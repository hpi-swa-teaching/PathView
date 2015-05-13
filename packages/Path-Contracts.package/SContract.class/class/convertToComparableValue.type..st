value range contracts
convertToComparableValue: anObject type: aClass
	anObject isString
		ifTrue: [
			(aClass includesBehavior: DateAndTime)
				ifTrue: [^ DateAndTime fromString: anObject].
			(aClass includesBehavior: Duration)
				ifTrue: [^ Duration fromString: anObject]].
	^ anObject