menu-actions
new

	self saveState.
	self removeAllMorphs.
	self savedName: nil.
	currentState := nil.
	self saveState.
	self dirty: false.