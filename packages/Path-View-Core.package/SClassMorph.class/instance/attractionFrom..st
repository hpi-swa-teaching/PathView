layout force-based
attractionFrom: connection
	"attraction-force = -distance * attraction-constant.
	First, get the other morph from the connection. This is multiplied with the direction to get a vector."
	
	| otherMorph vector |
	otherMorph := self == connection targetMorph
		ifTrue: [ connection sourceMorph isClassDiagramMorph ifTrue: [ connection sourceMorph classMorph ] ifFalse: [ connection sourceMorph ] ]
		ifFalse: [ connection targetMorph ].
	vector := self vectorTo: otherMorph.
	^ vector normalized negated * vector r * SClassDiagram attractionConstant