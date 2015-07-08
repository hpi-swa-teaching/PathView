zooming
testZoomingWithSlider

	| pathView slider diagram newZoomLvl |

	pathView := SPathView privateNew buildWith: MorphicToolBuilder new.
	slider := (pathView allSubmorphsOfKind: UiSlider) asOrderedCollection first.
	diagram := (pathView allSubmorphsOfKind: SClassDiagram) asOrderedCollection first.
	newZoomLvl := 0.6. "Should not be default value"

	slider currentValue: newZoomLvl.
	self assert: [ diagram scrollPane scroller scale = newZoomLvl ]