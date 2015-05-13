*DicThesaurusRex
isIndependentIn: aString startingAt: anIndex 
	| stringEnd originalStringInstance |
	self ifEmpty: [Error signal: 'self must not be empty'].
	anIndex > aString size
		ifTrue: [^ false].
	(anIndex = 1
			or: [(aString at: anIndex - 1) isLetter not or: [(aString at: anIndex) isUppercase]])
		ifFalse: [^ false].
	stringEnd := anIndex + self size - 1.
	originalStringInstance := aString copyFrom: anIndex + 1 to: stringEnd.
	((originalStringInstance allSatisfy: [:char | char isLowercase])
			or: [originalStringInstance allSatisfy: [:char | char isUppercase]])
		ifFalse: [^ false].
	(stringEnd = aString size
			or: [(aString at: stringEnd + 1) isLetter not or: [(aString at: stringEnd + 1) isUppercase]])
		ifFalse: [^ false].
	^ true