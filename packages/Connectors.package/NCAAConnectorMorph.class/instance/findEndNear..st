event handling
findEndNear: localPoint
	"Answer a constraint near localPoint, or nil.
	If more than one near, prefer disconnected one."
	| possible margin |
	possible := constraints detect: [ :ea | ea bounds containsPoint: localPoint ] ifNone: [].
	possible ifNotNil: [ ^possible ].
	margin := 20 min: ((constraints first position dist: constraints second position) / 3).
	possible := SortedCollection sortBlock: [ :a :b | a input isNil ].
	constraints
		with: (line arrowsContainPoint: localPoint)
		do: [ :constraint :flag | (flag or: [ (localPoint dist: constraint center) < margin ])
			ifTrue: [ possible add: constraint ] ].
	^possible at: 1 ifAbsent: [ ]