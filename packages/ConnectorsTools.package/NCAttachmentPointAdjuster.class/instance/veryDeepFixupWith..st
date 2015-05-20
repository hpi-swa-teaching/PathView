copying
veryDeepFixupWith: aCopier
	super veryDeepFixupWith: aCopier.
	target := aCopier references at: target ifAbsent: [ target ].
