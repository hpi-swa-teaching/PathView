restoring
setClassMorphPosition: aMorph
	| position |
	position := self classStore first.
	position isArray ifTrue: [position := position first].
	aMorph bounds: position.