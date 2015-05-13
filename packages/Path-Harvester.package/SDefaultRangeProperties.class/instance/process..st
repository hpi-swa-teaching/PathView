processing
process: anObject
	anObject 
		ifNil: [self nilAllowed: true]
		ifNotNil: [
			self lastObject
				ifNotNil: [self lastObject = anObject
							ifFalse: [self constantValue: false]].
			self lastObject: anObject].