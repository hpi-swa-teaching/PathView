accessing
project
	^ (self pathMap isNil or: [self pathMap project isNil])
		ifTrue: [SProject current]
		ifFalse: [self pathMap project].