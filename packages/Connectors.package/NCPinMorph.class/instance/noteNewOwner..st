submorphs-accessing
noteNewOwner: aMorph

	super noteNewOwner: aMorph.

	aMorph isPlayfieldLike
		ifTrue: [ ^self droppedIntoPasteUp: aMorph ].

	aMorph isHandMorph
		ifTrue: [ ]
		ifFalse: [ self embeddedIntoMorph: aMorph ]
