type labels
mouseMove: event
	| index word |
	super mouseMove: event.
	index := (self paragraph characterBlockAtPoint: event position) stringIndex.
	(self text notNil and: [index between: 1 and: self text size])
		ifTrue: [
			word := self wordAt: index.
			word isAllSeparators
				ifTrue: [self removeMorph: self labelMorph]
				ifFalse: [
					self changed: word with: self.
					(self labelMorph labelMorphs isEmpty or:
						[self labelMorph labelMorphs first contents = ''])
							ifTrue: [self removeMorph: self labelMorph]
							ifFalse: [self addMorph: self labelMorph.
									self labelMorph position: event position + self position]]].