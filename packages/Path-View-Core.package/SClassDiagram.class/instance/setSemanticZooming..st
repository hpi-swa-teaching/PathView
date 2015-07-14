zooming
setSemanticZooming: aNumber

	| fontSize |
	self isAlreadySemanticZooming 
		ifFalse: [ self setClassMorphsHidden: false ].


	fontSize := self fontSizeFromScale: aNumber.
	self enlargeClassNamesTo: fontSize.
	self isAlreadySemanticZooming: true