submorphs-accessing
noteNewOwner: aMorph 
	super noteNewOwner: aMorph.
	aMorph ifNil: [^self].
	self wantsGraphModel ifTrue: [
		aMorph graphContext ifNotNilDo: [ :gc | self ensureGraphModelInOwner: aMorph andContext:  gc ]].
	self needsOwnerSet: true.
	aMorph isHandMorph 
		ifTrue: [self trigger: #ownerChangedToHand with: aMorph]
		ifFalse: 
			[aMorph isPlayfieldLike 
				ifTrue: [self trigger: #ownerChangedToPasteUp with: aMorph]
				ifFalse: [self trigger: #ownerChanged with: aMorph]]