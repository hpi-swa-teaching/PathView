zooming
testZoomingWithClassMorphOnDiagram

	| zoomLevel |

	zoomLevel := (klass zoomMax + klass zoomMin) / 2.

	SScrollPane forMorph: instance.
	self addClass: klass.
	instance zoomTo: zoomLevel.
	
	Transcript show: (self getActualFontSize) asString, (instance classMorphs first nameMorph labelMorph contents) asString, (instance fontSizeFromScale: zoomLevel); cr.

	self
		assert: [ (self getActualFontSize) = (instance fontSizeFromScale: zoomLevel) ] 
		description: 'Font size of class morph should equal calculated font size from zoom level'
