accessing
thContainerMorphFor: aString

	^ classMorphs select: [ :each |
		(each isKindOf: SContainerClassMorph) and: [each klass printString = aString]]