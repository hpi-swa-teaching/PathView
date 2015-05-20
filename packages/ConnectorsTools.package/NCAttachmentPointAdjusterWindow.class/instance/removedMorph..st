private
removedMorph: aMorph 
	super removedMorph: aMorph.
	aMorph == target ifFalse: [ ^self ].
	target := nil.
	aMorph connectionTarget setAttachmentPointsFromDisplayed.
	self changed.
