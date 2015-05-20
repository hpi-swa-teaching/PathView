geometry
removeShortEndSegments
	"First remove overlaps"
	| inputs vertices |
	inputs := self connectedMorphs.
	inputs first ifNotNilDo: [ :m |
		(vertices := self vertices) size > 2 ifTrue: [
			((m fullContainsPoint: vertices second)
				and: [ (m fullContainsPoint: vertices third) not ])
					ifTrue: [ self setVertices: (vertices copyWithout: vertices second) ]]].
	inputs last ifNotNilDo: [ :m |
		(vertices := self vertices) size > 2 ifTrue: [
			((m fullContainsPoint: vertices nextToLast)
				and: [ (m fullContainsPoint: (vertices at: vertices size - 2)) not ])
					ifTrue: [ self setVertices: (vertices copyWithout: vertices nextToLast) ]]].
	line removeShortEndSegmentsStepping: [ constraints do: [ :ea | ea step ]].
