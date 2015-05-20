layout
positionRows: rows within: grid positions: positions distances: distances 
	| row |
	row := 1.
	(rows asSortedCollection: 
			[:a :b | 
			a size > b size or: [(distances at: a first) < (distances at: b first)]]) 
		do: 
			[:rowNodes | 
			| set |
			set := 0.
			rowNodes withIndexDo: 
					[:node :col | 
					positions at: node
						ifAbsentPut: 
							[
							grid at: col at: row put: node.
							set := set + 1.
							col@row ]].
			set > 0 ifTrue: [row := row + 1]]