drawing
initializeToStandAlone
	super initializeToStandAlone.
	self color:  (Color r: 0.972 g: 0.972 b: 0.5).
	self borderWidth: 1.
	self addDropShadow.
	self shadowColor:  (Color r: 0.721 g: 0.721 b: 0.725).
	self preferredConnection: #connectToNearestPointToCenter.
	self name: 'Note'.
