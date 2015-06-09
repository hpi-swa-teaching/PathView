initialization
morph: aMorph
	"parentMorph will be the morph where the toolbar will be added to.
	This is the ClassDiagram containing all the elements of the diagram.
	parentMorph stays nil, if no correct parent could be found. In this case, no popups will appear."
	
	morph := aMorph.
	self updateParentMorph.