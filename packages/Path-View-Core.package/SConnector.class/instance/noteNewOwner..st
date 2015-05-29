accessing
noteNewOwner: aMorph
	
	super noteNewOwner: aMorph.
	toolbar ifNotNil: [ toolbar updateParentMorph ].