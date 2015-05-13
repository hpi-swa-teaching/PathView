drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	(self isInheritedTestSelector 
		or: [(self parentSourceCodeEntityClass methodDict keys 
				includes: self sourceCodeEntity)])
			ifFalse: [^ self].
	(self additionalColors notNil and: [self additionalColors notEmpty])
		ifTrue: [self drawAdditionalColorsOn: aCanvas].
	self isSourceCodeEntityATestMethod
		ifTrue: [self drawText: 'U' on: aCanvas].