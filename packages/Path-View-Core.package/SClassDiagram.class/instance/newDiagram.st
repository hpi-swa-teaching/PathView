initialization
newDiagram

	self 
		saveState;
		removeAllMorphs;
		savedName: nil.
	currentState := nil.
	self 
		saveState;
		dirty: false