event handling
classMorphDragged
	"Pass the dragging-event to the class-morph."
	
	self highlightClassMorphs.
	self classMorph runMouseActionFor: #startDrag.