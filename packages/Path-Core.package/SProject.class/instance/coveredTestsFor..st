coverage
coveredTestsFor: aMethodReference
	| coveringTests |
	(self isClassInProject: (Smalltalk at: aMethodReference classSymbol))
		ifTrue: [
				coveringTests := Set new.
				self coverage keysAndValuesDo: [:test :coveredMethods |
					(coveredMethods includesKey: aMethodReference)
						ifTrue: [coveringTests add: test]].
				^ coveringTests asOrderedCollection]
		ifFalse: [^ {}].