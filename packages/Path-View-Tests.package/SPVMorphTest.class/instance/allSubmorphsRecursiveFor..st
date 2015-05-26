morphic-test-helpers
allSubmorphsRecursiveFor: aMorph
	| set flag |
	set := IdentitySet withAll: aMorph submorphs.
	flag := true.
	[ flag ]
		whileTrue: [ 
			(set select: [ :morph | morph hasSubmorphs and: [ (morph submorphs difference: set) notEmpty ] ])
				ifEmpty: [ flag := false ]
				ifNotEmptyDo: [ :nextMorphs | nextMorphs do: [ :morph | set addAll: morph submorphs ] ]	"No more submorphs to any of the morphs we have by now" ].
	^ set