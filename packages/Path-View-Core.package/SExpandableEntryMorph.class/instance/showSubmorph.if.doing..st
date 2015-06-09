layout and labels
showSubmorph: aSubmorph if: showMorph doing: addBlock
	"addBlock takes self and aSubmorph and has to add aSubmorph to self.
	This method returns nil, if nothing has been changed, returns true if aSubmorph has been added and false if it has been removed."
	
	^ aSubmorph ifNotNil: [
		(aSubmorph owner isNil & showMorph)
			ifTrue: [
				addBlock value: self value: aSubmorph.
				self bounds: (self bounds withHeight: (self bounds height + 15)).
				true ]
			ifFalse: [
		(aSubmorph owner notNil & showMorph not)
			ifTrue: [ | height |
				self removeMorph: aSubmorph.
				"Work around some kind of morphic bug. If all submorphs have just been removed, submorphBounds is updated delayed."
				height := self submorphs ifEmpty: [ 3 ] ifNotEmpty: [ self submorphBounds height - 15 ].
				self bounds: (self submorphBounds withHeight: height).
				false ] ] ]