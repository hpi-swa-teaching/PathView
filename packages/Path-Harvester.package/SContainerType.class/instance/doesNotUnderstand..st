error handling
doesNotUnderstand: aMessage

	^ (self theNonMetaClass respondsTo: aMessage selector)
		ifTrue: [self theNonMetaClass
						perform: aMessage selector
						withArguments: aMessage arguments]
		ifFalse: [super doesNotUnderstand: aMessage]