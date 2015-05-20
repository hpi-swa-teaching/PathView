arrows
destinationArrowName: aSymbol
	| arrows |
	arrows := line arrows.
	arrows at: 2 put: (self class arrowDictionary at: aSymbol ifAbsent: [ ^nil ]).
	line arrows: arrows