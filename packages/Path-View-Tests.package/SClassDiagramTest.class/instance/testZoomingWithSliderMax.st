testZooming
testZoomingWithSliderMax

	| pathView slider diagram newZoomLevel |

	pathView := SPathView privateNew buildWith: MorphicToolBuilder new.
	slider := (pathView allSubmorphsOfKind: UiSlider) asOrderedCollection first.
	diagram := (pathView allSubmorphsOfKind: SClassDiagram) asOrderedCollection first.
	newZoomLevel := SClassDiagram zoomMax + 1. 
	
	slider currentValue: newZoomLevel.
	self assert: [ diagram scrollPane scroller scale = SClassDiagram zoomMax ]