layout
layoutHorizontallyWithin: rect
	| aPoint q rows lastAdded grid positions cellSize distance distances |
	self isEmpty ifTrue: [ ^self ].
	cellSize := 0 @ 0.
	q := OrderedCollection new.
	rows := OrderedCollection new.
	aPoint := rect origin.
	positions := IdentityDictionary new.
	lastAdded := nil.
	distance := 0.
	distances := IdentityDictionary new.
	self 
		dfsPre: 
			[:n | 
			cellSize := cellSize max: n extent.
			q addLast: n.
			distances at: n put: distance.
			distance := distance + 1.
			lastAdded := n]
		post: 
			[:n | 
			n == lastAdded ifTrue: [rows add: q copy].
			distance := distance - 1.
			q removeLast]
		edgeBlock: 
			[:e :state | 
			state == #processed 
				ifTrue: 
					[q addLast: (lastAdded := e destinationMorph).
					rows add: q copy.
					q removeLast]].

	"Now extend the rows if possible. N^2 but worth it."
	rows do: 
			[:row1 | 
			rows do: 
					[:row2 | 
					| i |
					row1 ~~ row2 
						ifTrue: 
							[i := row2 indexOf: row1 last.
							i > 0 ifTrue: [row1 addAll: (row2 copyFrom: i + 1 to: row2 size)]]]].

	grid := NCGraphLayoutGrid
		width:  (rect width / cellSize x) ceiling
		height:  (rect height / cellSize y) ceiling
		type: Array.
	self 
		positionRows: rows
		within: grid
		positions: positions
		distances: distances.

	self edges do: [:ea | ea straighten].

	[ grid condenseVertically > 0 ] whileTrue.
	cellSize := rect extent // grid usedExtent.
	grid
		keysAndValuesDo: [ :pos :node | node position: aPoint + (pos - (1@1) * cellSize)].
