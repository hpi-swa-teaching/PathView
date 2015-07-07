zooming
testZoomingWithClassMorphOnDiagram

	| zoomLevel scrollPane dropPosition classMorph fontHeight fontSize calculatedFontSize |

	dropPosition := instance bounds center.
	zoomLevel := 0.5.
	scrollPane := SScrollPane forMorph: instance.
	
	instance
		openClassMorphFor: klass
		nextTo: dropPosition
		positionedBy: [ :morph | morph position: dropPosition ].

	instance zoomTo: zoomLevel.

	classMorph := instance classMorphs first.
	fontHeight := classMorph nameMorph labelMorph height.
	fontSize := TextStyle pixelsToPoints: fontHeight.
	calculatedFontSize := instance fontSizeFromScale: zoomLevel.

	self 
		assert: [ fontSize = calculatedFontSize ] 
		description: 'Font size of class morph should equal calculated font size from zoom level'
