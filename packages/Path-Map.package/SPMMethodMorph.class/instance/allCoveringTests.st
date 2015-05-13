menu actions
allCoveringTests
	| coveringTests methodRef |
	coveringTests := Set new.
	methodRef := self methodReference.
	self pathMap tracer ifNil: [^ coveringTests].
	self testResults keysAndValuesDo: [:test :coveredMethods |
		(coveredMethods includesKey: methodRef)
			ifTrue: [coveringTests add: test]].
	^ coveringTests asOrderedCollection