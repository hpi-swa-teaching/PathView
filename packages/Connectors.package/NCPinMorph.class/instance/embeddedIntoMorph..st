submorphs-accessing
embeddedIntoMorph: aMorph
	| player |
	player := aMorph assuredPlayer.
	Cursor normal show.
	player createSlotFor: self.