submorphs-add/remove
contentChangedBecauseOf: aMorph
	
	((aMorph isKindOf: SClassDiagramMorph) or: [ aMorph isKindOf: SConnector ])
		ifTrue: [ self makeDirty ].
	self changed: #hasSubmorphs.
	self hasSubmorphs not & self isSaved not ifTrue: [ self dirty: false ].