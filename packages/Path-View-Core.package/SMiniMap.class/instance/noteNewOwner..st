initialize
noteNewOwner: aMorph
	
	super noteNewOwner: aMorph.
	self hideByDefault ifTrue: [ self hide ].