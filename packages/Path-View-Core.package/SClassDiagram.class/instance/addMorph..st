submorphs-add/remove
addMorph: aMorph
	
	self griddingOn ifTrue: [ self alignToGrid: aMorph ].
	super addMorph: aMorph