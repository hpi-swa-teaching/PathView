evaluating
beforeMethod
	self tracer active
		ifTrue: [self calls: self calls + 1].