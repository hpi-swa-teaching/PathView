layout
layoutMorph: aPasteUpMorph 
	self nodes: aPasteUpMorph allConnectedMorphs.
	self edges: aPasteUpMorph allConnections.
	layoutMorph := aPasteUpMorph.
	aesthetics isEmpty ifTrue: [self setAesthetics].
	self clearForces.
	self setUpForLayout.
	self edges do: [ :e | e straighten ].
	iterations := 0.
	self startStepping