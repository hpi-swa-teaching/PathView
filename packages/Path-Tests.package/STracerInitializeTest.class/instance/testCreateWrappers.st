testing
testCreateWrappers

	| wrappers |
	[wrappers := self tracer createWrappers.
	self assert: wrappers notEmpty.
	self assert: wrappers size > 1.
	wrappers do: [:each | 
		each wrappedClass isMeta
			ifFalse: [self assert: (each wrappedClass category beginsWith: 'Path-Tests-Sandbox')]]
	] ensure: [self tracer removeWrappers: wrappers].