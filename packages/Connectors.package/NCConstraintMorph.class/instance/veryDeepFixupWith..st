copying
veryDeepFixupWith: aDeepCopier
	super veryDeepFixupWith: aDeepCopier.
	constrained := aDeepCopier references at: constrained ifAbsent: [ ].
	inputs := inputs collect: [ :ea | | inp |
		inp := ea ifNotNil: [ aDeepCopier references at: ea ifAbsent: [ nil ] ].
		inp ifNotNil: [ inp connectConstraint: self ].
		inp ].
