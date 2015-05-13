evaluating
beforeMethod

	self numberOfCallsBefore = 1
		ifTrue: [SBreakpointManager installInClass: self wrappedClass selector: self clientSelector.].
	self decrementCallCount.