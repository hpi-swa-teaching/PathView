event handling
okay
	| nArgs glyph |
	glyph := self glyphDictionary at: self nameOfGraphic ifAbsent: [ ].
	target ifNotNil:[
		nArgs := selector numArgs.
		nArgs = 1 ifTrue:[target perform: selector with: glyph ].
		nArgs = 2 ifTrue:[target perform: selector with: glyph with: argument]].

	owner isSystemWindow ifTrue: [ owner delete ]