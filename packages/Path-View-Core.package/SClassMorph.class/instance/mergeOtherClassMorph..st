dropping/grabbing
mergeOtherClassMorph: aMorph
	
	aMorph connections do: [ :each | each mergeFrom: aMorph to: self ].
	self focus.
	aMorph abandon.