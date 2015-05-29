initialization
initialize
	"The toolbar is added to the owner-morph lazily in #show"
	
	super initialize.
	leftBar := SDiagramMorphToolbarPanel new orientation: #vertical; wrapDirection: #rightToLeft.  
	topBar := SDiagramMorphToolbarPanel new orientation: #horizontal; wrapDirection: #bottomToTop.
	rightBar := SDiagramMorphToolbarPanel new orientation: #vertical; wrapDirection: #leftToRight.
	bottomBar := SDiagramMorphToolbarPanel new orientation: #horizontal; wrapDirection: #topToBottom.
	self
		flag: #ag; "TODO set some properties, so that the extent is resized based on the submorphs; to avoid hiding popups, when the width is more than one button"
		color: Color transparent;
		addAllMorphs: {leftBar. topBar. rightBar. bottomBar}.