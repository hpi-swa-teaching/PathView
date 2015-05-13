accessing
setIconMorph: aMorph
	
	self removeIcon.
	iconMorph := aMorph.
	labelMorph owner
		addMorph: iconMorph
		inFrontOf: labelMorph.
	^ aMorph