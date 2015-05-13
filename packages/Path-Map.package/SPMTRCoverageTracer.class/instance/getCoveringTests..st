accessing
getCoveringTests: aMethodReference
	| coveringTests |
	coveringTests := Set new.
	self testResults keysAndValuesDo: [:test :coveredMethods |
		(coveredMethods includesKey: aMethodReference)
			ifTrue: [coveringTests add: test]].
	^ coveringTests asOrderedCollection