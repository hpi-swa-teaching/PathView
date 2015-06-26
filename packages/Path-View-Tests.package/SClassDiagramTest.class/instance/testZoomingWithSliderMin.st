zooming
testZoomingWithSliderMin

	| pathView slider diagram newZoomLevel |

	pathView := SPathView privateNew buildWith: MorphicToolBuilder new.
	slider := (pathView allSubmorphsOfKind: UiSlider) asOrderedCollection first.
	diagram := (pathView allSubmorphsOfKind: SClassDiagram) asOrderedCollection first.
	newZoomLevel := SClassDiagram zoomMin - 1. 
	
	slider currentValue: newZoomLevel.
	self assert: [ diagram scrollPane scroller scale = SClassDiagram zoomMin ]