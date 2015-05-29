updating
connectStartTo: newStart
	
	sourceMorph := newStart.
	^ self
		existingDuplicateOrSelfFrom: targetMorph
		ifSelf: [ super connectStartTo: newStart ]