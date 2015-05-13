building
buildWith: aBuilder

	self windowMorph: (aBuilder build: self windowSpec).
	^ self windowMorph
	