submorphs-accessing
noteNewOwner: aMorph
	super noteNewOwner: aMorph.
	aMorph ifNil: [^self].
	self wantsGraphModel ifTrue: [
		aMorph graphContext ifNotNilDo: [ :gc | self ensureGraphModelInOwner: aMorph andContext:  gc ]].