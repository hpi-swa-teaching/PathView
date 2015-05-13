value range contracts
check: anObject and: aClass IfPossible: aBlock
	anObject ifNil: [^ self].
	(anObject class includesBehavior: aClass) ifFalse: [^ self].
	((anObject class includesBehavior: String) and: [aClass = Collection]) ifTrue: [^ self].
	aBlock value.