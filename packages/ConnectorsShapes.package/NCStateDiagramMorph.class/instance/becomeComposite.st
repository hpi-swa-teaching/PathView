menus
becomeComposite
	| newMorph |
	newMorph := NCCompositeStateMorph newCompositeState.
	newMorph textRectangle
		layoutPolicy: self layoutPolicy;
		removeAllMorphs;
		addAllMorphs: self submorphs;
		layoutChanged;
		fullBounds.
	newMorph position: self position.
	self owner addMorphFront: newMorph; removeMorph: self.
	self connectedConstraints do: [ :ea | ea attachTo: newMorph at: newMorph topCenter ].
	self delete.
	