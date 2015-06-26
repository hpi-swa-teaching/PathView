initialization
initialize 
	
	super initialize.
	self
		extent: 1000@1000;
		borderColor: Color gray;
		color: Color white;
		zoomLevel: self class defaultZoomLevel.
	classMorphs := OrderedCollection new.
	layoutingLocked := false.
	hasScrollPane := false.

	"Comment this in to enable the selection morph"
	"selectionMorph := SSelectionMorph new."

	dirty := false.
	labelsHidden := false.
	self currentHand newKeyboardFocus: self.
	self changed: #hasSubmorphs. "This deactivates 'Save as PNG' button."
	savedStates := Dictionary new.
	self saveState.
	openMutex := Mutex new.