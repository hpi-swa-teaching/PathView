updating
connectFinishTo: newTarget
	
	targetMorph := newTarget.
	^ self
		existingDuplicateOrSelfFrom: sourceMorph
		ifSelf: [ super connectFinishTo: newTarget ]