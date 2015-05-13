updating
update: aResult

	(aResult isNil or: [aResult isLiteral]) ifTrue: [^ self]. 
	(aResult isKindOf: TestResult) not ifTrue: [^ self].
	
	aResult passed ifNotEmpty: [self color: self class passedColor].
	aResult failures ifNotEmpty: [self color: self class failureColor].
	aResult errors ifNotEmpty: [self color: self class errorColor].