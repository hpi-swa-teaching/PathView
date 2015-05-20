submorphs-accessing
noteNewOwner: aMorph
	super noteNewOwner: aMorph.
	aMorph ifNil: [ ^self ].
	aMorph isHandMorph
		ifTrue: [ aMorph newKeyboardFocus: (self firstEmptyTextMorph) ].
	self wantsGraphModel ifFalse: [ ^self ].
	aMorph graphContext ifNotNilDo: [ :gc | self ensureGraphModelInOwner: aMorph andContext:  gc ].