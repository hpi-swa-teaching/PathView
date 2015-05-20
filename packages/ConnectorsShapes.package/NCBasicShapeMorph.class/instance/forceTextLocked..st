text morphs-accessing
forceTextLocked: aBoolean
	self setProperty: #forceTextLocked toValue: (aBoolean ifTrue: [ true ] ifFalse: [ ]).