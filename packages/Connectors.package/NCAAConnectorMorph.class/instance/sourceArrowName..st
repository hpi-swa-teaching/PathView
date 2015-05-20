arrows
sourceArrowName: aSymbol
	| arrows |
	arrows := line arrows.
	arrows at: 1 put: (self class arrowDictionary at: aSymbol ifAbsent: [ ^nil ]).
	line arrows: arrows