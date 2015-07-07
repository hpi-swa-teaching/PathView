zooming
setSemanticZooming: aNumber

	| fontSize |
	self isSemanticZooming 
		ifFalse: [ self setClassMorphsHidden: false ].


	fontSize := self fontSizeFromScale: aNumber.
	self enlargeClassNamesTo: fontSize.
	self isSemanticZooming: true