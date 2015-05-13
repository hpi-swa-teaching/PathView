instance creation
openSaved: aString
	| window diagram |
	window := self open.
	diagram := window classDiagramMorph.
	diagram openSaved: aString.