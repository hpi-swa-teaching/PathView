zooming
testDefaultZoomingWithClassMorphOnDiagram

	| font textStyle |
	SScrollPane forMorph: instance.
	self addClass: klass.

	textStyle := TextStyle named: SClassNameMorph fontName.
	font := textStyle fontOfPointSize: SClassNameMorph defaultFontSize.
	
	self 
		assert: [ self getActualFontSize = font height ] 
		description: 'Font size of class morph should equal calculated font size from zoom level'
