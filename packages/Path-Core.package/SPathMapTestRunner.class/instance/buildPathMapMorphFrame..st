building-customs
buildPathMapMorphFrame: aRectangle
	| root |
	root := self pathMap rootMorph.
	self setFrame: aRectangle in: root.
	self windowMorph addMorph: root.