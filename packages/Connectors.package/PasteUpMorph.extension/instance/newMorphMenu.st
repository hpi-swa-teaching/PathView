*connectors
newMorphMenu
	(TheWorldMenu new
		world: self
		project: (self project ifNil: [Project current])       "mvc??"
		hand: ActiveHand) newMorph