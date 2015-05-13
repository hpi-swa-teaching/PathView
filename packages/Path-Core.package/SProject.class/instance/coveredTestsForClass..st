coverage
coveredTestsForClass: aClass
	| methodReferences coveringTests |
	(self isClassInProject: aClass)
		ifTrue: [
				methodReferences := self allMethodReferencesOf: aClass.
				coveringTests := Set new.
				methodReferences do: [:each | 
					coveringTests := coveringTests, (self coveredTestsFor: each)].
				^ coveringTests asOrderedCollection]
		ifFalse: [^ {}].