spec commands
openPathViewOnTrace
	self isTreeAvailable
		ifTrue: [self openPathViewWith: self getClassesFromTrace].